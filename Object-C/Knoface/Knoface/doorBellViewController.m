//
//  doorBellViewController.m
//  Knoface
//
//  Created by 徐贤达 on 2018/4/30.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import "doorBellViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface doorBellViewController ()
{
    SystemSoundID sound;
}

//@property (weak, nonatomic) IBOutlet UILabel *topLabel;
//@property (weak, nonatomic) IBOutlet UILabel *topLabel;

@property (weak, nonatomic) IBOutlet UIView *topView;

@property (nonatomic,strong) NSTimer *timer;

@property (nonatomic,strong) UIAlertView *alert;

@end

#define channelOnCharacteristicView @"CharacteristicView"

@implementation doorBellViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"duolali:%@",_characteristic);
    
    UIImageView *backImage=[[UIImageView alloc]initWithFrame:self.view.bounds];
    backImage.image=[UIImage imageNamed:@"doorBellBack.jpg"];
    [self.view insertSubview:backImage atIndex:0];
    
    _topView.backgroundColor=[UIColor clearColor];
    UIVisualEffectView *backView=[[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleRegular]];
    backView.frame=CGRectMake(0, 0, _topView.bounds.size.width, _topView.bounds.size.height);
    [_topView insertSubview:backView atIndex:0];
    
    [self babyDelegate];
    baby.channel(channelOnCharacteristicView).characteristicDetails(self.currPeripheral,self.characteristic);
    
    [baby cancelNotify:self.currPeripheral characteristic:self.characteristic];

}

-(void)viewDidDisappear:(BOOL)animated
{
    [baby cancelNotify:self.currPeripheral characteristic:self.characteristic];
}

- (IBAction)receiveData:(UISwitch *)sender
{
    if(sender.on==YES)
    {
        __weak typeof(self)weakSelf = self;
        [weakSelf.currPeripheral setNotifyValue:YES forCharacteristic:self.characteristic];
        //设置读数据成功的Block
        [baby notify:self.currPeripheral characteristic:self.characteristic
               block:^(CBPeripheral *peripheral, CBCharacteristic *characteristics, NSError *error)
         {
             NSLog(@"notify block");
             [self setAudio];
             [self setMyTimer];
         }];
    }
    else
    {
        [baby cancelNotify:self.currPeripheral characteristic:self.characteristic];
    }
}

-(void)setAudio
{
    NSURL *path = [[NSBundle mainBundle]URLForResource:@"Yellow" withExtension:@"wav"];
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
    _alert = [[UIAlertView alloc]initWithTitle:@"有人正在敲门" message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"我知道了", nil];
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

-(void)babyDelegate
{
    __weak typeof(self)weakSelf = self;
    //设置读取characteristics的委托
    [baby setBlockOnReadValueForCharacteristicAtChannel:channelOnCharacteristicView block:^(CBPeripheral *peripheral, CBCharacteristic *characteristics, NSError *error)
    {
        [weakSelf insertReadValues:characteristics];
    }];
    //设置发现characteristics的descriptors的委托
    [baby setBlockOnDiscoverDescriptorsForCharacteristicAtChannel:channelOnCharacteristicView block:^(CBPeripheral *peripheral, CBCharacteristic *characteristic, NSError *error)
    {
        for (CBDescriptor *d in characteristic.descriptors)
        {
            [weakSelf insertDescriptor:d];
        }
    }];
    //设置读取Descriptor的委托
    [baby setBlockOnReadValueForDescriptorsAtChannel:channelOnCharacteristicView block:^(CBPeripheral *peripheral, CBDescriptor *descriptor, NSError *error) {
        NSLog(@"CharacteristicViewController Descriptor name:%@ value is:%@",descriptor.characteristic.UUID, descriptor.value);
    }];
}

-(void)insertDescriptor:(CBDescriptor *)descriptor
{
    [self->descriptors addObject:descriptor];
}

-(void)insertReadValues:(CBCharacteristic *)characteristics
{
    [self->readValueArray addObject:[NSString stringWithFormat:@"%@",characteristics.value]];
}

@end
