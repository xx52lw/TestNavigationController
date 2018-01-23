//
//  TestNavigationController.h
//  TestNavigationController
//
//  Created by liwei on 16/6/21.
//  Copyright © 2016年 liwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestNavigationController : UINavigationController <UIGestureRecognizerDelegate, UINavigationControllerDelegate>

@property(nonatomic, weak) UIViewController *currentShowVC;

@end
