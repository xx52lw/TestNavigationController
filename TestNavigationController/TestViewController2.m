//
//  TestViewController2.m
//  TestNavigationController
//
//  Created by liwei on 16/6/21.
//  Copyright © 2016年 liwei. All rights reserved.
//

#import "TestViewController2.h"

@interface TestViewController2 () <UIScrollViewDelegate>

@end

@implementation TestViewController2

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
    
    CGFloat viewWidth = CGRectGetWidth(self.view.frame);
    CGFloat viewHeight = CGRectGetHeight(self.view.frame);
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, viewWidth, viewHeight)];
    scrollView.backgroundColor = [UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1];
    scrollView.pagingEnabled = YES;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.contentSize = CGSizeMake(viewWidth * 3, viewHeight);
    scrollView.delegate = self;
    [self.view addSubview:scrollView];
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, viewWidth, viewHeight)];
    label1.backgroundColor = [UIColor orangeColor];
    label1.textColor = [UIColor whiteColor];
    label1.font = [UIFont systemFontOfSize:20.0f];
    label1.textAlignment = NSTextAlignmentCenter;
    label1.text = @"11111";
    [scrollView addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(viewWidth, 0, viewWidth, viewHeight)];
    label2.backgroundColor = [UIColor yellowColor];
    label2.textColor = [UIColor whiteColor];
    label2.font = [UIFont systemFontOfSize:20.0f];
    label2.textAlignment = NSTextAlignmentCenter;
    label2.text = @"22222";
    [scrollView addSubview:label2];
    
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(viewWidth * 2, 0, viewWidth, viewHeight)];
    label3.backgroundColor = [UIColor greenColor];
    label3.textColor = [UIColor whiteColor];
    label3.font = [UIFont systemFontOfSize:20.0f];
    label3.textAlignment = NSTextAlignmentCenter;
    label3.text = @"33333";
    [scrollView addSubview:label3];
}

- (void)backAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
