//
//  ViewController.h
//  Knoface
//
//  Created by 徐贤达 on 2018/4/8.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import "BabyBluetooth.h"
#import "SVProgressHUD.h"

@interface BXMainViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

