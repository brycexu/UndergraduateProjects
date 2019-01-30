//
//  BXFailureVC.m
//  密码锁
//
//  Created by 徐贤达 on 2018/4/11.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import "BXFailureVC.h"

@interface BXFailureVC ()

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UIButton *backButton;

//计时器
@property NSTimer *timer;

//倒计时
@property NSInteger timeLeft;

@end

@implementation BXFailureVC

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.backButton.enabled=NO;
    self.timeLeft=9;
    NSString *string=[NSString stringWithFormat:@"%ld",self.timeLeft+1];
    self.timeLabel.text=string;
    [self timeDown];
}

//设置timer,每一秒钟调用这个函数
-(void)timeDown
{
    [self handleTimer];
    self.timer=[NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(handleTimer) userInfo:nil repeats:YES];
}

//每一秒调用的函数
-(void)handleTimer
{
    //倒计时还有时间
    if(self.timeLeft>=0)
    {
        int sec=((self.timeLeft%(24*3600))%3600)%60;
        NSString *string=[NSString stringWithFormat:@"%d",sec];
        self.timeLabel.text=string;
    }
    //倒计时结束
    else
    {
        self.backButton.enabled=YES;
        [self.timer invalidate];
    }
    self.timeLeft--;
}

- (IBAction)backToMainPage
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
