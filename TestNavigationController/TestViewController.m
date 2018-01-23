//
//  TestViewController.m
//  TestNavigationController
//
//  Created by liwei on 16/6/21.
//  Copyright © 2016年 liwei. All rights reserved.
//

#import "TestViewController.h"
#import "TestViewController1.h"
#import "TestViewController2.h"
#import "TestViewController3.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake((self.view.frame.size.width - 50) / 2, 100, 50, 50);
    button1.backgroundColor = [UIColor blueColor];
    [button1 setTitle:@"确定1" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(buttonAction1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake((self.view.frame.size.width - 50) / 2, 200, 50, 50);
    button2.backgroundColor = [UIColor blueColor];
    [button2 setTitle:@"确定2" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(buttonAction2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake((self.view.frame.size.width - 50) / 2, 300, 50, 50);
    button3.backgroundColor = [UIColor blueColor];
    [button3 setTitle:@"确定2" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(buttonAction3:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
}

- (void)buttonAction1:(id)sender
{
    TestViewController1 *vc = [[TestViewController1 alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)buttonAction2:(id)sender
{
    TestViewController2 *vc = [[TestViewController2 alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)buttonAction3:(id)sender
{
    TestViewController3 *vc = [[TestViewController3 alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
