//
//  PeripheralViewController.h
//  Knoface
//
//  Created by 徐贤达 on 2018/4/30.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import "BabyBluetooth.h"
#import "SVProgressHUD.h"
#import "PeripheralInfo.h"

@interface PeripheralViewController : UIViewController
{
    @public
    BabyBluetooth *baby;
}

@property __block NSMutableArray *services;
@property(strong,nonatomic)CBPeripheral *currPeripheral;

@end
