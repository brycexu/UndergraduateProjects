//
//  BXResetVC.h
//  密码锁
//
//  Created by 徐贤达 on 2018/4/11.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BXResetVCDelegate <NSObject>

-(void)passValue:(NSString *)resetKeyValue;

@end

@interface BXResetVC : UIViewController

typedef enum
{
    ResetState0=0,
    ResetState1,
    ResetState2,
    ResetState3,
    ResetState4,
}ResetState;

@property (nonatomic,assign) id<BXResetVCDelegate> delegate;

@end
