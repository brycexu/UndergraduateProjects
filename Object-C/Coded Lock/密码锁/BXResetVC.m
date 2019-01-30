//
//  BXResetVC.m
//  密码锁
//
//  Created by 徐贤达 on 2018/4/11.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import "BXResetVC.h"

@interface BXResetVC ()

//显示第一个星号的标签
@property (weak, nonatomic) IBOutlet UILabel *showLabel1;

@property (weak, nonatomic) IBOutlet UILabel *showLabel2;

@property (weak, nonatomic) IBOutlet UILabel *showLabel3;

@property (weak, nonatomic) IBOutlet UILabel *showLabel4;

//重置的密码
@property (nonatomic,retain) NSString *resetKey;

@property (nonatomic,retain) NSString *resetKey_check;

//判断是否两次输入一致
@property NSInteger flag;

@property NSInteger times;

@end

@implementation BXResetVC

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.times=0;
    self.flag=0;
    self.resetKey=[[NSString alloc]init];
    self.resetKey=@"";
    self.resetKey_check=[[NSString alloc]init];
    self.resetKey_check=@"";
}

//加上星号
-(void)appendStar
{
    if(self.times<=4)
    {
        switch(self.times)
        {
            case 1:self.showLabel1.text=@"*";
                break;
            case 2:self.showLabel2.text=@"*";
                break;
            case 3:self.showLabel3.text=@"*";
                break;
            case 4:self.showLabel4.text=@"*";
                break;
        }
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"注意" message:@"请输入不超过4位的密码" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
        [alert show];
    }
}

//重置重置的密码
-(void)resetKeyValue
{
    if(self.flag==0)
    {
        self.resetKey=@"";
    }
    if(self.flag==1)
    {
        self.resetKey_check=@"";
    }
}

//重置星号显示标签
-(void)deleteStar
{
    self.showLabel1.text=@"";
    self.showLabel2.text=@"";
    self.showLabel3.text=@"";
    self.showLabel4.text=@"";
}

//为重置密码添加值
-(void)addValue:(NSInteger )value
{
    if(self.flag==0)
    {
        if(self.times<=4)
        {
            NSString *string=[NSString stringWithFormat:@"%ld",value];
            self.resetKey=[self.resetKey stringByAppendingString:string];
        }
    }
    if(self.flag==1)
    {
        if(self.times<=4)
        {
            NSString *string=[NSString stringWithFormat:@"%ld",value];
            self.resetKey_check=[self.resetKey_check stringByAppendingString:string];
        }
    }
}

//数字按键按下响应
- (IBAction)typeIn:(UIButton *)sender
{
    switch(sender.tag)
    {
        case 1:
            self.times++;
            [self appendStar];
            [self addValue:sender.tag];
            break;
        case 2:
            self.times++;
            [self appendStar];
            [self addValue:sender.tag];
            break;
        case 3:
            self.times++;
            [self appendStar];
            [self addValue:sender.tag];
            break;
        case 4:
            self.times++;
            [self appendStar];
            [self addValue:sender.tag];
            break;
        case 5:
            self.times++;
            [self appendStar];
            [self addValue:sender.tag];
            break;
        case 6:
            self.times++;
            [self appendStar];
            [self addValue:sender.tag];
            break;
        case 7:
            self.times++;
            [self appendStar];
            [self addValue:sender.tag];
            break;
        case 8:
            self.times++;
            [self appendStar];
            [self addValue:sender.tag];
            break;
        case 9:
            self.times++;
            [self appendStar];
            [self addValue:sender.tag];
            break;
        case 0:
            self.times++;
            [self appendStar];
            [self addValue:sender.tag];
            break;
        case 11:
            self.times=0;
            [self deleteStar];
            [self resetKeyValue];
            break;
        case 12:
            [self backToMainPage];
            break;
    }
}

-(void)FSM
{
    // 从NSString对象Inputdata构建数组Input
    NSMutableArray *resetKey=[NSMutableArray arrayWithCapacity:0];
    [self.resetKey enumerateSubstringsInRange:NSMakeRange(0, self.resetKey.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring,NSRange substringRnage,NSRange enclosingRange,BOOL *stop){
        [resetKey addObject:substring];
    }];
    // 从NSString对象self.keyTrue构造数组Key
    NSMutableArray *resetKey_check=[NSMutableArray arrayWithCapacity:0];
    [self.resetKey_check enumerateSubstringsInRange:NSMakeRange(0, self.resetKey_check.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring,NSRange substringRnage,NSRange enclosingRange,BOOL *stop){
        [resetKey_check addObject:substring];
    }];
// 第一类有限状态机实现
    ResetState current_state=ResetState0;
    int i;
    for(i=0;i<self.resetKey_check.length;i++)
    {
        switch(current_state)
        {
            case ResetState0:
                if([resetKey_check[i] intValue]==[resetKey[1] intValue])
                {
                    current_state=ResetState1;
                }
                break;
            case ResetState1:
                if([resetKey_check[i] intValue]==[resetKey[2] intValue])
                {
                    current_state=ResetState2;
                }
                break;
            case ResetState2:
                if([resetKey_check[i] intValue]==[resetKey[3] intValue])
                {
                    current_state=ResetState3;
                }
                break;
            case ResetState3:
                if([resetKey_check[i] intValue]==[resetKey[4] intValue])
                {
                    current_state=ResetState4;
                }
                break;
            case ResetState4:
                break;
            default:
                break;
        }
    }
    if(current_state==ResetState4)
    {
        self.flag=2;
    }
    else
    {
        self.flag=3;
    }
}

//回传和会页函数
-(void)backToMainPage
{
    //flag==0:输入重置密码结束
    if(self.flag==0)
    {
        self.times=0;
        [self deleteStar];
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"提示" message:@"请重新输入重置密码" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
        [alert show];
        self.flag=1;
        return;
    }
    //flag==1:第二次输入重置密码结束
    if(self.flag==1)
    {
        if([self.resetKey isEqualToString:self.resetKey_check])
        {
            //flag==2:两次输入匹配
            self.flag=2;
        }
        else
        {
            //flag==3:两次输入不匹配
            self.flag=3;
        }
    }
    if(self.flag==2)
    {
        if(self.resetKey.length==4)
        {
            [self.delegate passValue:self.resetKey];
            NSString *string=[NSString stringWithFormat:@"您的新密码是:%@",self.resetKey];
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"注意" message:string delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
            [alert show];
            [self.navigationController popViewControllerAnimated:YES];
        }
        else
        {
            self.times=0;
            [self deleteStar];
            [self resetKeyValue];
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"注意" message:@"请输入4位的密码" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
            [alert show];
            self.flag=0;
        }
    }
    if(self.flag==3)
    {
        self.times=0;
        self.flag=0;
        [self deleteStar];
        [self resetKeyValue];
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"注意" message:@"两次输入不一致,请重新输入重置密码" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
        [alert show];
    }
}


@end
