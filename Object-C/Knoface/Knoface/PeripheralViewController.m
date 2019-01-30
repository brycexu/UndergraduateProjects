//
//  PeripheralViewController.m
//  Knoface
//
//  Created by 徐贤达 on 2018/4/30.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import "PeripheralViewController.h"
#import "controllViewController.h"
#import "doorBellViewController.h"
#import <AudioToolbox/AudioToolbox.h>

#define channelOnPeropheralView @"peripheralView"

@interface PeripheralViewController ()
{
    SystemSoundID sound;
}

@property (weak, nonatomic) IBOutlet UIButton *doorBellButton;

@property (weak, nonatomic) IBOutlet UIButton *controllerButton;

@property (weak, nonatomic) IBOutlet UIButton *starter;

@property (nonatomic,strong) NSTimer *timer;

@property (nonatomic,strong) UIAlertView *alert;

@property (weak, nonatomic) IBOutlet UILabel *loadingLabel;

@property (weak, nonatomic) IBOutlet UIView *topView;

@end

@implementation PeripheralViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.doorBellButton.enabled=NO;
    self.controllerButton.enabled=NO;
    
    UIImageView *backImage=[[UIImageView alloc]initWithFrame:self.view.bounds];
    backImage.image=[UIImage imageNamed:@"selectBack.jpg"];
    [self.view insertSubview:backImage atIndex:0];
    
    _topView.backgroundColor=[UIColor clearColor];
    UIVisualEffectView *backView=[[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleRegular]];
    backView.frame=CGRectMake(0, 0, _topView.bounds.size.width, _topView.bounds.size.height);
    [_topView insertSubview:backView atIndex:0];
    
    self.services=[[NSMutableArray alloc]init];
    [self babyDelegate];
    
    [self performSelector:@selector(loadData) withObject:nil afterDelay:2];
    [SVProgressHUD showInfoWithStatus:@"准备连接设备"];
    
    [self.starter setTitle:@"" forState:UIControlStateNormal];
    //self.starter.enabled=NO;
    
}

- (IBAction)start
{
    self.doorBellButton.enabled=YES;
    self.controllerButton.enabled=YES;
    [self.currPeripheral setNotifyValue:YES forCharacteristic:[[[self.services objectAtIndex:2] characteristics]objectAtIndex:0]];
    [baby notify:self.currPeripheral characteristic:[[[self.services objectAtIndex:2] characteristics]objectAtIndex:0] block:^(CBPeripheral *peripheral, CBCharacteristic *characteristics, NSError *error) {
        [self setAudio];
        [self setMyTimer];
    }];
}


-(void)babyDelegate{
    __weak typeof(self)weakSelf = self;
    BabyRhythm *rhythm = [[BabyRhythm alloc]init];
    //设置设备连接成功的委托,同一个baby对象，使用不同的channel切换委托回调
    [baby setBlockOnConnectedAtChannel:channelOnPeropheralView block:^(CBCentralManager *central, CBPeripheral *peripheral) {
        [SVProgressHUD showInfoWithStatus:[NSString stringWithFormat:@"设备：%@--连接成功",peripheral.name]];
    }];
    //设置设备连接失败的委托
    [baby setBlockOnFailToConnectAtChannel:channelOnPeropheralView block:^(CBCentralManager *central, CBPeripheral *peripheral, NSError *error) {
        NSLog(@"设备：%@--连接失败",peripheral.name);
        [SVProgressHUD showInfoWithStatus:[NSString stringWithFormat:@"设备：%@--连接失败",peripheral.name]];
    }];
    //设置设备断开连接的委托
    [baby setBlockOnDisconnectAtChannel:channelOnPeropheralView block:^(CBCentralManager *central, CBPeripheral *peripheral, NSError *error) {
        NSLog(@"设备：%@--断开连接",peripheral.name);
        [SVProgressHUD showInfoWithStatus:[NSString stringWithFormat:@"设备：%@--断开失败",peripheral.name]];
    }];
    //设置发现设备的Services的委托
    [baby setBlockOnDiscoverServicesAtChannel:channelOnPeropheralView block:^(CBPeripheral *peripheral, NSError *error) {
        for (CBService *s in peripheral.services) {
            ///插入section到tableview
            [weakSelf insertservice:s];
        }
        [rhythm beats];
    }];
    //设置发现设service的Characteristics的委托
    [baby setBlockOnDiscoverCharacteristicsAtChannel:channelOnPeropheralView block:^(CBPeripheral *peripheral, CBService *service, NSError *error) {
        NSLog(@"===service name:%@",service.UUID);
        //插入row到tableview
        [weakSelf insertcharacteristics:service];
    }];
    //设置读取characteristics的委托
    [baby setBlockOnReadValueForCharacteristicAtChannel:channelOnPeropheralView block:^(CBPeripheral *peripheral, CBCharacteristic *characteristics, NSError *error) {
        NSLog(@"characteristic name:%@ value is:%@",characteristics.UUID,characteristics.value);
    }];
    //设置发现characteristics的descriptors的委托
    [baby setBlockOnDiscoverDescriptorsForCharacteristicAtChannel:channelOnPeropheralView block:^(CBPeripheral *peripheral, CBCharacteristic *characteristic, NSError *error) {
        NSLog(@"===characteristic name:%@",characteristic.service.UUID);
        for (CBDescriptor *d in characteristic.descriptors) {
            NSLog(@"CBDescriptor name is :%@",d.UUID);
        }
    }];
    //设置读取Descriptor的委托
    [baby setBlockOnReadValueForDescriptorsAtChannel:channelOnPeropheralView block:^(CBPeripheral *peripheral, CBDescriptor *descriptor, NSError *error) {
        NSLog(@"Descriptor name:%@ value is:%@",descriptor.characteristic.UUID, descriptor.value);
    }];
    //读取rssi的委托
    [baby setBlockOnDidReadRSSI:^(NSNumber *RSSI, NSError *error) {
        NSLog(@"setBlockOnDidReadRSSI:RSSI:%@",RSSI);
    }];
    //设置beats break委托
    [rhythm setBlockOnBeatsBreak:^(BabyRhythm *bry)
    {
        NSLog(@"setBlockOnBeatsBreak call");
        //self.doorBellButton.enabled=YES;
        //self.controllerButton.enabled=YES;
        self.loadingLabel.text=@"";
        [self.starter setTitle:@"开始使用" forState:UIControlStateNormal];
        self.starter.enabled=YES;
    }];
    //设置beats over委托
    [rhythm setBlockOnBeatsOver:^(BabyRhythm *bry)
    {
        NSLog(@"setBlockOnBeatsOver call");
        //self.doorBellButton.enabled=YES;
        //self.controllerButton.enabled=YES;
        self.loadingLabel.text=@"";
        self.starter.titleLabel.text=@"开始使用";
        self.starter.enabled=YES;
    }];
    //扫描选项->CBCentralManagerScanOptionAllowDuplicatesKey:忽略同一个Peripheral端的多个发现事件被聚合成一个发现事件
    NSDictionary *scanForPeripheralsWithOptions = @{CBCentralManagerScanOptionAllowDuplicatesKey:@YES};
    NSDictionary *connectOptions = @{CBConnectPeripheralOptionNotifyOnConnectionKey:@YES,
                                     CBConnectPeripheralOptionNotifyOnDisconnectionKey:@YES,
                                     CBConnectPeripheralOptionNotifyOnNotificationKey:@YES};
    [baby setBabyOptionsAtChannel:channelOnPeropheralView scanForPeripheralsWithOptions:scanForPeripheralsWithOptions connectPeripheralWithOptions:connectOptions scanForPeripheralsWithServices:nil discoverWithServices:nil discoverWithCharacteristics:nil];
}

-(void)insertservice:(CBService *)service
{
    NSLog(@"搜索到服务:%@",service.UUID.UUIDString);
    PeripheralInfo *info = [[PeripheralInfo alloc]init];
    [info setServiceUUID:service.UUID];
    [self.services addObject:info];
}

-(void)insertcharacteristics:(CBService *)service
{
    int sect = -1;
    for (int i=0;i<self.services.count;i++) {
        PeripheralInfo *info = [self.services objectAtIndex:i];
        if (info.serviceUUID == service.UUID) {
            sect = i;
        }
    }
    if (sect != -1)
    {
        PeripheralInfo *info =[self.services objectAtIndex:sect];
        for (int row=0;row<service.characteristics.count;row++)
        {
            CBCharacteristic *c = service.characteristics[row];
            [info.characteristics addObject:c];
            NSLog(@"add indexpath in row:%d, sect:%d",row,sect);
        }
        PeripheralInfo *curInfo =[self.services objectAtIndex:sect];
        NSLog(@"%@",curInfo.characteristics);
    }
}

-(void)loadData
{
    [SVProgressHUD showInfoWithStatus:@"开始连接设备"]; baby.having(self.currPeripheral).and.channel(channelOnPeropheralView).then.connectToPeripherals().discoverServices().discoverCharacteristics().readValueForCharacteristic().discoverDescriptorsForCharacteristic().readValueForDescriptors().begin();
}


- (IBAction)doorBellModule:(UIButton *)sender
{
    self.doorBellButton.enabled=NO;
    self.controllerButton.enabled=NO;
    doorBellViewController *vc = [[doorBellViewController alloc]init];
    vc.currPeripheral = self.currPeripheral;
    vc.characteristic =[[[self.services objectAtIndex:2] characteristics]objectAtIndex:0];
    vc->baby=baby;
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)controllerModule:(UIButton *)sender
{
    self.controllerButton.enabled=NO;
    self.doorBellButton.enabled=NO;
    controllViewController *vc = [[controllViewController alloc]init];
    vc.currPeripheral = self.currPeripheral;
    vc.characteristic =[[[self.services objectAtIndex:2] characteristics]objectAtIndex:0];
    vc->baby=baby;
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)setAudio
{
    NSURL *path = [[NSBundle mainBundle]URLForResource:@"Maps" withExtension:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)path, &sound);
    AudioServicesAddSystemSoundCompletion(sound, NULL, NULL,soundCompleteCallback, NULL);
    AudioServicesPlaySystemSound(sound);
}

static void soundCompleteCallback(SystemSoundID sound, void* data)
{
    AudioServicesPlaySystemSound(sound);
}

-(void)setMyTimer
{
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(play) userInfo:nil repeats:YES];
    _alert = [[UIAlertView alloc]initWithTitle:@"手机在这里" message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"我知道了", nil];
    [_alert show];
}

-(void)play
{
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    //AudioServicesPlaySystemSound(1007);
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [_timer invalidate];
    AudioServicesRemoveSystemSoundCompletion(sound);
    AudioServicesDisposeSystemSoundID(sound);
}



@end
