//
//  AppDelegate.m
//  Knoface
//
//  Created by 徐贤达 on 2018/4/8.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import "AppDelegate.h"
#import "launchViewController.h"
#import <CoreBluetooth/CoreBluetooth.h>
#import "BabyBluetooth.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSArray *centralManagerIdentifiers=launchOptions[UIApplicationLaunchOptionsBluetoothCentralsKey];
    
    NSLog(@"%@",centralManagerIdentifiers);
    
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.backgroundColor=[UIColor whiteColor];
    
    [self.window makeKeyAndVisible];
    
    NSLog(@"启动！");
    
    //整个软件是从launchViewController开始启动的！
    launchViewController *welcome=[[launchViewController alloc]init];
    
    self.window.rootViewController=welcome;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
