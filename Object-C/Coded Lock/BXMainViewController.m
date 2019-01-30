//
//  BXMainViewController.m
//  密码锁
//
//  Created by 徐贤达 on 2018/4/10.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import "BXMainViewController.h"
#import "BXSuccessVC.h"
#import "BXFailureVC.h"
#import "BXResetVC.h"

@interface BXMainViewController ()<BXResetVCDelegate>

//用来显示星号的标签
@property (weak, nonatomic) IBOutlet UILabel *keyLabel;

//星号显示
@property (nonatomic,retain) NSString *keyShow;

//输入的密码
@property (nonatomic,retain) NSString *keyValue;

//正确的密码
@property (nonatomic,retain) NSString *keyTrue;

//输入的次数
@property NSInteger times;

@end

@implementation BXMainViewController

//用来接收重置的密码值
-(void)passValue:(NSString *)resetKeyValue
{
    self.keyTrue=[NSString stringWithString:resetKeyValue];
    NSLog(@"NewPassword:%@",self.keyTrue);
}

-(void)viewDidLoad
{
    self.keyShow=[[NSString alloc]initWithFormat:@""];
    self.keyValue=[[NSString alloc]initWithFormat:@""];
    self.times=0;
    self.keyTrue=[[NSString alloc]init];
    //初始密码默认为"1001"
    if(self.keyTrue.length==0)
    {
        self.keyTrue=@"1001";
    }
}

//重置输入密码
-(void)resetKeyValue
{
    self.keyValue=@"";
}

//重置星号标签
-(void)resetKeyLabel
{
    self.keyShow=@"";
    self.keyLabel.text=self.keyShow;
}

//星号标签加星号
-(void)appendStar
{
    self.keyShow=[self.keyShow stringByAppendingString:@"*"];
    self.keyLabel.text=self.keyShow;
}

//重置星号标签
-(void)deleteStar
{
    self.keyShow=@"";
    self.keyLabel.text=self.keyShow;
}

-(void)FSM:(NSString *)Inputdata
{
    // 从NSString对象Inputdata构建数组Input
    NSMutableArray *Input=[NSMutableArray arrayWithCapacity:0];
    [Inputdata enumerateSubstringsInRange:NSMakeRange(0, Inputdata.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring,NSRange substringRnage,NSRange enclosingRange,BOOL *stop){
        [Input addObject:substring];
    }];
    // 从NSString对象self.keyTrue构造数组Key
    NSMutableArray *Key=[NSMutableArray arrayWithCapacity:0];
    [self.keyTrue enumerateSubstringsInRange:NSMakeRange(0, self.keyTrue.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring,NSRange substringRnage,NSRange enclosingRange,BOOL *stop){
        [Key addObject:substring];
    }];
// 第二类有限状态机实现
    int i=0;
    int z=0;
    // 重置检测
    State current_state=State0;
    for(i=0;i<Inputdata.length;i++)
    {
        switch(current_state)
        {
            case State0:
                if([Input[i] intValue]==1)
                {
                    current_state=State1;
                    z=0;
                }
                break;
            case State1:
                if([Input[i] intValue]==8)
                {
                    current_state=State2;
                    z=0;
                }
                break;
            case State2:
                if([Input[i] intValue]==0)
                {
                    current_state=State3;
                    z=0;
                }
                break;
            case State3:
                if([Input[i] intValue]==4)
                {
                    current_state=State4;
                    z=0;
                }
                break;
            case State4:
                if([Input[i] intValue]==0)
                {
                    current_state=State5;
                    z=0;
                }
                break;
            case State5:
                if([Input[i] intValue]==9)
                {
                    current_state=State6;
                    z=0;
                }
                break;
            case State6:
                current_state=State0;
                z=1;
                break;
            default:
                break;
        }
    }
    // 重置检测成功,进入重置状态:State_Reset;
    if(z==1)
    {
        current_state=State_Reset;
        [self resetKeyLabel];
        [self reset];
        return;
    }
    // 重置检测失败,进入密码检测
    // 密码检测
    current_state=State0;
    z=0;
    for(i=0;i<Inputdata.length;i++)
    {
        switch(current_state)
        {
            case State0:
                if([Input[i] intValue]==[Key[0] intValue])
                {
                    current_state=State1;
                    z=0;
                }
                break;
            case State1:
                if([Input[i] intValue]==[Key[1] intValue])
                {
                    current_state=State2;
                    z=0;
                }
                break;
            case State2:
                if([Input[i] intValue]==[Key[2] intValue])
                {
                    current_state=State3;
                    z=0;
                }
                break;
            case State3:
                if([Input[i] intValue]==[Key[3] intValue])
                {
                    current_state=State4;
                    z=0;
                }
                break;
            case State4:
                current_state=State0;
                z=1;
                break;
            default:
                break;
         }
    }
    // 密码检测成功,进入打开状态:State_Correct_Open
    if(z==1)
    {
        current_state=State_Correct_Open;
        [self resetKeyLabel];
        [self success];
    }
    // 密码检测失败,进入计数状态:State_Incorrect_CountTimes;
    else
    {
        current_state=State_Incorrect_CountTimes;
        self.times++;
        // 计数小于3,重新回到密码检测状态:State0
        if(self.times<3)
        {
            [self resetKeyLabel];
            NSString *info=[NSString stringWithFormat:@"密码错误，您还有%ld次机会",3-self.times];
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"注意" message:info delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
            [alert show];
            current_state=State0;
        }
        // 计数大于3,进入锁屏状态:State_Failure_Punish
        else
        {
            [self resetKeyLabel];
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"注意" message:@"密码错误三次，将锁屏3分钟" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
            [alert show];
            current_state=State_Failure_Punish;
            [self failure];
        }
    }
}

//确认输入密码和正确密码
-(void)checkValue
{
    if(self.keyValue.length<4)
    {
        [self resetKeyLabel];
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"注意" message:@"请输入4位以上的密码" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
        [alert show];
    }
    //判断输入是否是重置密码的密码
    if(self.keyValue.length>=6)
    {
        NSString *string6;
        string6=[self.keyValue substringFromIndex:self.keyValue.length-6];
        if([string6 isEqualToString:@"180409"])
        {
            [self resetKeyLabel];
            [self reset];
            return;
        }
    }
    if(self.keyValue.length>=4)
    {
        NSString *string4;
        string4=[self.keyValue substringFromIndex:self.keyValue.length-4];
        //输入密码和正确密码匹配,成功
        if([string4 isEqualToString:self.keyTrue])
        {
            [self resetKeyLabel];
            [self success];
        }
        //输入密码和正确密码不匹配,失败一次
        else
        {
            self.times++;
            //未失败三次
            if(self.times<3)
            {
                [self resetKeyLabel];
                NSString *info=[NSString stringWithFormat:@"密码错误，您还有%ld次机会",3-self.times];
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"注意" message:info delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
                [alert show];
            }
            //失败三次,锁屏
            if(self.times==3)
            {
                [self resetKeyLabel];
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"注意" message:@"密码错误三次，将锁屏3分钟" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
                [alert show];
                [self failure];
            }
        }
        return;
    }
}

//成功解锁
-(void)success
{
    NSLog(@"success");
    self.times=0;
    self.keyValue=@"";
    BXSuccessVC *success=[[BXSuccessVC alloc]init];
    [self.navigationController pushViewController:success animated:YES];
}

//失败三次锁屏
-(void)failure
{
    NSLog(@"failure");
    self.times=0;
    self.keyValue=@"";
    BXFailureVC *failure=[[BXFailureVC alloc]init];
    [self.navigationController pushViewController:failure animated:YES];
}

//重置密码
-(void)reset
{
    NSLog(@"reset");
    self.times=0;
    self.keyValue=@"";
    BXResetVC *reset=[[BXResetVC alloc]init];
    reset.delegate=self;
    [self.navigationController pushViewController:reset animated:YES];
}

//数字按钮按下的响应
- (IBAction)buttonAction:(UIButton *)sender
{

    switch (sender.tag)
    {
        case 1:
            [self appendStar];
            self.keyValue=[self.keyValue stringByAppendingString:@"1"];
            break;
        case 2:
            [self appendStar];
            self.keyValue=[self.keyValue stringByAppendingString:@"2"];
            break;
        case 3:
            [self appendStar];
            self.keyValue=[self.keyValue stringByAppendingString:@"3"];
            break;
        case 4:
            [self appendStar];
            self.keyValue=[self.keyValue stringByAppendingString:@"4"];
            break;
        case 5:
            [self appendStar];
            self.keyValue=[self.keyValue stringByAppendingString:@"5"];
            break;
        case 6:
            [self appendStar];
            self.keyValue=[self.keyValue stringByAppendingString:@"6"];
            break;
        case 7:
            [self appendStar];
            self.keyValue=[self.keyValue stringByAppendingString:@"7"];
            break;
        case 8:
            [self appendStar];
            self.keyValue=[self.keyValue stringByAppendingString:@"8"];
            break;
        case 9:
            [self appendStar];
            self.keyValue=[self.keyValue stringByAppendingString:@"9"];
            break;
        case 0:
            [self appendStar];
            self.keyValue=[self.keyValue stringByAppendingString:@"0"];
            break;
        //*号键,取消
        case 11:
            [self resetKeyValue];
            [self deleteStar];
            break;
        //#号键,确认
        case 12:
            [self checkValue];
            break;
    }
    
}

@end
