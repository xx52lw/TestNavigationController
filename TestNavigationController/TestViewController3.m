//
//  TestViewController3.m
//  TestNavigationController
//
//  Created by liwei on 16/6/23.
//  Copyright © 2016年 liwei. All rights reserved.
//

#import "TestViewController3.h"

@interface TestViewController3 () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation TestViewController3

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 50, 30);
    button.backgroundColor = [UIColor yellowColor];
    [button setTitle:@"返 回" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [tableView setBackgroundColor:[UIColor whiteColor]];
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}

- (void)backAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableViewCellIdentifier = @"tableViewCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableViewCellIdentifier];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableViewCellIdentifier];
        [cell setBackgroundColor:[UIColor clearColor]];
        [cell setAccessoryType:UITableViewCellAccessoryNone];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    
    cell.textLabel.text = [[NSString alloc] initWithFormat:@"测试 %ld", (long)indexPath.row];

    return cell;
}


@end
