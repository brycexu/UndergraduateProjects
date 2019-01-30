//
//  ViewController.m
//  Knoface
//
//  Created by 徐贤达 on 2018/4/8.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import "BXMainViewController.h"
#import "PeripheralViewController.h"

//screen width and height

@interface BXMainViewController ()
{
    NSMutableArray *peripheralDataArray;
    BabyBluetooth *baby;
}

@property (weak, nonatomic) IBOutlet UILabel *Knoface;


@end

@implementation BXMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//UI设计
    //顶部标签
    _Knoface.font=[UIFont fontWithName:@"MarkerFelt-Thin" size:60];
    //背景图片
    UIImageView *backImage=[[UIImageView alloc]initWithFrame:self.view.bounds];
    backImage.image=[UIImage imageNamed:@"sea.jpg"];
    [self.view insertSubview:backImage atIndex:0];
    UIVisualEffectView *backView=[[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleRegular]];
    backView.frame=self.view.bounds;
    //表格背景
    self.tableView.backgroundColor=[UIColor clearColor];
    //self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //[self.tableView addSubview:backView];
    self.tableView.layer.borderWidth=3;
    self.tableView.layer.borderColor=[[UIColor orangeColor] CGColor];
    
    NSLog(@"viewDidLoad");
    peripheralDataArray = [[NSMutableArray alloc]init];
    
    //初始化BabyBluetooth 蓝牙库
    baby = [BabyBluetooth shareBabyBluetooth];
    //设置蓝牙委托
    [self babyDelegate];
}

-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"viewDidAppear");
    //停止之前的连接
    [baby cancelAllPeripheralsConnection];
    //设置委托后直接可以使用，无需等待CBCentralManagerStatePoweredOn状态。
    baby.scanForPeripherals().begin();
    //baby.scanForPeripherals().begin().stop(10);
}

-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"viewWillDisappear");
}

//蓝牙网关初始化和委托方法设置
-(void)babyDelegate{
    __weak typeof(self) weakSelf = self;
    [baby setBlockOnCentralManagerDidUpdateState:^(CBCentralManager *central)
    {
        if (central.state == CBCentralManagerStatePoweredOn){
            [SVProgressHUD showInfoWithStatus:@"设备打开成功，开始扫描设备"];}
    }];
    //设置扫描到设备的委托
    [baby setBlockOnDiscoverToPeripherals:^(CBCentralManager *central, CBPeripheral *peripheral, NSDictionary *advertisementData, NSNumber *RSSI) {
        //NSLog(@"搜索到了设备:%@",peripheral.name);
        [weakSelf insertTableView:peripheral advertisementData:advertisementData RSSI:RSSI];
    }];
    //设置发现设service的Characteristics的委托
    [baby setBlockOnDiscoverCharacteristics:^(CBPeripheral *peripheral, CBService *service, NSError *error) {
        NSLog(@"===service name:%@",service.UUID);
        for (CBCharacteristic *c in service.characteristics) {
            NSLog(@"charateristic name is :%@",c.UUID);
        }
    }];
    //设置读取characteristics的委托
    [baby setBlockOnReadValueForCharacteristic:^(CBPeripheral *peripheral, CBCharacteristic *characteristics, NSError *error) {
        NSLog(@"characteristic name:%@ value is:%@",characteristics.UUID,characteristics.value);
    }];
    //设置发现characteristics的descriptors的委托
    [baby setBlockOnDiscoverDescriptorsForCharacteristic:^(CBPeripheral *peripheral, CBCharacteristic *characteristic, NSError *error) {
        NSLog(@"===characteristic name:%@",characteristic.service.UUID);
        for (CBDescriptor *d in characteristic.descriptors) {
            NSLog(@"CBDescriptor name is :%@",d.UUID);
        }
    }];
    //设置读取Descriptor的委托
    [baby setBlockOnReadValueForDescriptors:^(CBPeripheral *peripheral, CBDescriptor *descriptor, NSError *error) {
        NSLog(@"Descriptor name:%@ value is:%@",descriptor.characteristic.UUID, descriptor.value);
    }];
    //设置查找设备的过滤器
    [baby setFilterOnDiscoverPeripherals:^BOOL(NSString *peripheralName, NSDictionary *advertisementData, NSNumber *RSSI) {
        if (peripheralName.length >0) {
            return YES;
        }
        return NO;
    }];
    [baby setBlockOnCancelAllPeripheralsConnectionBlock:^(CBCentralManager *centralManager) {
        NSLog(@"setBlockOnCancelAllPeripheralsConnectionBlock");
    }];
    [baby setBlockOnCancelScanBlock:^(CBCentralManager *centralManager) {
        NSLog(@"setBlockOnCancelScanBlock");
    }];
    //扫描选项->CBCentralManagerScanOptionAllowDuplicatesKey:忽略同一个Peripheral端的多个发现事件被聚合成一个发现事件
    NSDictionary *scanForPeripheralsWithOptions = @{CBCentralManagerScanOptionAllowDuplicatesKey:@YES};
    //连接设备->
    [baby setBabyOptionsWithScanForPeripheralsWithOptions:scanForPeripheralsWithOptions connectPeripheralWithOptions:nil scanForPeripheralsWithServices:nil discoverWithServices:nil discoverWithCharacteristics:nil];
}

#pragma mark -UIViewController 方法
//插入table数据
-(void)insertTableView:(CBPeripheral *)peripheral advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI{
    
    NSArray *peripherals = [peripheralDataArray valueForKey:@"peripheral"];
    if(![peripherals containsObject:peripheral]) {
        NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:peripherals.count inSection:0];
        [indexPaths addObject:indexPath];
        
        NSMutableDictionary *item = [[NSMutableDictionary alloc] init];
        [item setValue:peripheral forKey:@"peripheral"];
        [item setValue:RSSI forKey:@"RSSI"];
        [item setValue:advertisementData forKey:@"advertisementData"];
        [peripheralDataArray addObject:item];
        
        [self.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

#pragma mark -table委托 table delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return peripheralDataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
    NSDictionary *item = [peripheralDataArray objectAtIndex:indexPath.row];
    CBPeripheral *peripheral = [item objectForKey:@"peripheral"];
    NSDictionary *advertisementData = [item objectForKey:@"advertisementData"];
    NSNumber *RSSI = [item objectForKey:@"RSSI"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    //peripheral的显示名称,优先用kCBAdvDataLocalName的定义，若没有再使用peripheral name
    NSString *peripheralName;
    if ([advertisementData objectForKey:@"kCBAdvDataLocalName"])
    {
        peripheralName = [NSString stringWithFormat:@"%@",[advertisementData objectForKey:@"kCBAdvDataLocalName"]];
    }
    else if(!([peripheral.name isEqualToString:@""] || peripheral.name == nil))
    {
        peripheralName = peripheral.name;
    }
    else
    {
        peripheralName = [peripheral.identifier UUIDString];
    }
    
    cell.textLabel.text = peripheralName;
    //信号和服务
    cell.detailTextLabel.text = [NSString stringWithFormat:@"RSSI:%@",RSSI];
    
    cell.backgroundColor=[UIColor whiteColor];
    
    //毛玻璃效果(去掉了)
    UIVisualEffectView *backView=[[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleRegular]];
    backView.frame=CGRectMake(cell.frame.origin.x, cell.frame.origin.y, cell.frame.size.width, 1.3*cell.frame.size.height);
    //[cell insertSubview:backView atIndex:0];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //停止扫描
    [baby cancelScan];

    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    PeripheralViewController *vc = [[PeripheralViewController alloc]init];
    NSDictionary *item = [peripheralDataArray objectAtIndex:indexPath.row];
    CBPeripheral *peripheral = [item objectForKey:@"peripheral"];
    vc.currPeripheral = peripheral;
    vc->baby = self->baby;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
