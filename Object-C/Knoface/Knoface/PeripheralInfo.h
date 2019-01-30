//
//  PeripheralInfo.h
//  Knoface
//
//  Created by 徐贤达 on 2018/4/30.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>

@interface PeripheralInfo : NSObject

@property (nonatomic,strong) CBUUID *serviceUUID;
@property (nonatomic,strong) NSMutableArray *characteristics;

@end

