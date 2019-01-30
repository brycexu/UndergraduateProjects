//
//  launchViewController.m
//  Knoface
//
//  Created by 徐贤达 on 2018/4/8.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import "launchViewController.h"
#import "BXMainViewController.h"

//启动画面的设置

@interface launchViewController ()

@end

@implementation launchViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *welcomeImageView=[[UIImageView alloc]init];
    
    welcomeImageView.frame=CGRectMake(0, 0, deviceWidth, deviceHeight);
    
    welcomeImageView.image=[UIImage imageNamed:@"welcome.jpeg"];
    
    [self.view addSubview:welcomeImageView];
    
    //延时3秒
    [self performSelector:@selector(changeView) withObject:self afterDelay:3];
    
}

-(void)changeView
{
    UIWindow *window=self.view.window;
    
    //创建主界面的对象
    BXMainViewController *view=[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"main"];
    
    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:view];
    
    //创建主界面的出场动画
    nav.view.transform = CGAffineTransformMakeScale(0.2, 0.2);
    
    [UIView animateWithDuration:1 animations:^{
        nav.view.transform = CGAffineTransformIdentity;
    }];
    
    window.rootViewController = nav;
    
    //nav.navigationBarHidden=YES;
}

@end






