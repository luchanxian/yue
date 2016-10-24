//
//  AppDelegate.m
//  ITSNS
//
//  Created by 一羞 on 16/8/23.
//  Copyright © 2016年 Apple. All rights reserved.
//
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件

#import "AppDelegate.h"
#import "XHDrawerController.h"
#import "LYLeftMenuViewController.h"
#import "LYMainTabbarController.h"
#import "Bmob.h"
#import "AppDelegate+EaseMob.h"
#import "LYWelcomeViewController.h"
#import "LYMainNavigatoinController.h"
@interface AppDelegate ()
@property (nonatomic, strong)BMKMapManager* mapManager;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [BmobUser logout];
 
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    //初始化Bmob
    [Bmob registerWithAppKey:@"7331678d426e14e06e250dee9f69145a"];
    
    _mapManager = [[BMKMapManager alloc]init];
    // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
    BOOL ret = [_mapManager start:@"SAuktHYN55zh7YU24lIcW79f19rKP0a0"  generalDelegate:nil];
    if (!ret) {
        NSLog(@"manager start failed!");
    }
    
    
    //初始化环信
    [self easemobInitWithApplication:application andOptions:launchOptions];
    
    
    //判断是否登录
    if ([BmobUser currentUser]) {
//        登陆过显示主页
        [self showHomeVC];
    }else{
        //显示欢迎页面
        self.window.rootViewController = LYNavi([[LYWelcomeViewController alloc]init]);
    
        
    }
    
    
    
   
    
    return YES;
}

-(void)showHomeVC{
    XHDrawerController *drawerController = [[XHDrawerController alloc]init];
    drawerController.springAnimationOn = YES;
    LYLeftMenuViewController *menuVC = [[LYLeftMenuViewController alloc]init];
    drawerController.leftViewController = menuVC;
    
    
    self.tabbarController = [[LYMainTabbarController alloc]init];
    drawerController.centerViewController = self.tabbarController;
    
    self.window.rootViewController = drawerController;
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
