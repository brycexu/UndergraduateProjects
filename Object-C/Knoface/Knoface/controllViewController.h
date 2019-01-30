//
//  controllViewController.h
//  Knoface
//
//  Created by 徐贤达 on 2018/4/30.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import "BabyBluetooth.h"

@interface controllViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    @public
    BabyBluetooth *baby;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic,strong)CBCharacteristic *characteristic;
@property (nonatomic,strong)CBPeripheral *currPeripheral;

@end
