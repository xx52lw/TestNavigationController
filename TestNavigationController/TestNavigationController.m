//
//  TestNavigationController.m
//  TestNavigationController
//
//  Created by liwei on 16/6/21.
//  Copyright © 2016年 liwei. All rights reserved.
//

#import "TestNavigationController.h"

@interface TestNavigationController ()

@end

@implementation TestNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];

    __weak typeof(self) wself = self;
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)])
    {
        self.interactivePopGestureRecognizer.delegate = wself;
        self.delegate = wself;
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)] && animated == YES)
        self.interactivePopGestureRecognizer.enabled = NO;
    
    [super pushViewController:viewController animated:animated];
}

- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated
{
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)] && animated == YES)
        self.interactivePopGestureRecognizer.enabled = NO;
    
    return [super popToRootViewControllerAnimated:animated];
}

- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if([self respondsToSelector:@selector(interactivePopGestureRecognizer)])
        self.interactivePopGestureRecognizer.enabled = NO;
    
    return [super popToViewController:viewController animated:animated];
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animate
{
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)])
    {
        if (navigationController.childViewControllers.count < 2)
            self.interactivePopGestureRecognizer.enabled = NO;
        else
            self.interactivePopGestureRecognizer.enabled = YES;
    }
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    [otherGestureRecognizer requireGestureRecognizerToFail:gestureRecognizer];
    return NO;
}

@end
