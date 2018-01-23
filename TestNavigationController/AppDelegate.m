//
//  AppDelegate.m
//  TestNavigationController
//
//  Created by liwei on 16/6/21.
//  Copyright © 2016年 liwei. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.viewController = [[TestViewController alloc] init];
    self.navigationController = [[TestNavigationController alloc]initWithRootViewController:self.viewController];
    self.window.rootViewController = self.navigationController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
