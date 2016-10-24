//
//  AppDelegate.h
//  ITSNS
//
//  Created by 一羞 on 16/8/23.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LYMainTabbarController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, strong)LYMainTabbarController *tabbarController;
@property (strong, nonatomic) UIWindow *window;

-(void)showHomeVC;
@end

