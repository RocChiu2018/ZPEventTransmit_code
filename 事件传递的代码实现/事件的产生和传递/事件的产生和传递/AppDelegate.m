//
//  AppDelegate.m
//  事件的产生和传递
//
//  Created by apple on 16/7/13.
//  Copyright © 2016年 apple. All rights reserved.
//

/**
 本Demo由于要用自己的窗口(ZPWindow)，所以程序上来不需要自动加载项目自带的storyboard文件，所以在项目的TARGETS中的General中的Deployment Info中的Main Interface后面填空。在本类中要用代码的方式让自己创建的窗口来加载storyboard文件；
 本Demo是把原先系统自动处理触摸事件的过程用代码的方式表示出来。
 */
#import "AppDelegate.h"
#import "ZPWindow.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //1、创建程序的窗口：
    self.window = [[ZPWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //2、storyboard文件：
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    //3、加载storyboard文件中箭头所指向的视图控制器：
    ViewController *vc = [storyboard instantiateInitialViewController];
    
    //4、设置窗口的根视图控制器
    self.window.rootViewController = vc;
    
    //5、设置window为主窗口并可见:
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
