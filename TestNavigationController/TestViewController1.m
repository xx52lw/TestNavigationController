//
//  TestViewController1.m
//  TestNavigationController
//
//  Created by liwei on 16/6/23.
//  Copyright © 2016年 liwei. All rights reserved.
//

#import "TestViewController1.h"

@interface TestViewController1 ()

@end

@implementation TestViewController1

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 50, 30);
    button.backgroundColor = [UIColor yellowColor];
    [button setTitle:@"返 回" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
}

- (void)backAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
