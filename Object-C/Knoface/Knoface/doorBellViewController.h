//
//  doorBellViewController.h
//  Knoface
//
//  Created by 徐贤达 on 2018/4/30.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import "BabyBluetooth.h"

@interface doorBellViewController : UIViewController
{
    @public
    BabyBluetooth *baby;
    __block NSMutableArray *descriptors;
    __block NSMutableArray *readValueArray;
}

@property (nonatomic,strong)CBCharacteristic *characteristic;
@property (nonatomic,strong)CBPeripheral *currPeripheral;


@end
