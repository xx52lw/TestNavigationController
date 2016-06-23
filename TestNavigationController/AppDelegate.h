//
//  AppDelegate.h
//  TestNavigationController
//
//  Created by liwei on 16/6/21.
//  Copyright © 2016年 winchannel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestNavigationController.h"
#import "TestViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) TestNavigationController *navigationController;
@property (strong, nonatomic) TestViewController *viewController;

@end

