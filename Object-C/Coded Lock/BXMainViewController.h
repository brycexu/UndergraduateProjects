//
//  BXMainViewController.h
//  密码锁
//
//  Created by 徐贤达 on 2018/4/10.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BXMainViewController : UIViewController

typedef enum
{
    State0=0,
    State1,
    State2,
    State3,
    State4,
    State5,
    State6,
    State_Reset,
    State_Correct_Open,
    State_Incorrect_CountTimes,
    State_Failure_Punish,
}State;

@end
