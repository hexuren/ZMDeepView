//
//  ViewController.m
//  ZMDeepView
//
//  Created by ZM on 2018/9/14.
//  Copyright © 2018年 hexuren. All rights reserved.
//

#import "ViewController.h"

#import "CFDeepView.h"

@interface ViewController ()
{
    CFDeepView  *_lineChatView;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(100, 400, 200, 50)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"更新数据" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(update:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    //折线图
    _lineChatView = [[CFDeepView alloc] initWithFrame:CGRectMake(15, 100, self.view.frame.size.width - 30, 230)];
    _lineChatView.backgroundColor = [UIColor colorWithRed:247/255.0 green:247/255.0  blue:247/255.0  alpha:1];
    [self.view addSubview:_lineChatView];
    _lineChatView.dataArrOfY = @[@"500",@"400",@"300",@"200",@"100"];//Y轴坐标
    _lineChatView.dataArrOfX = @[@"0.001",@"0.006",@"0.011"];//X轴坐标
    NSDictionary *dic1 = @{@"price":@"0.001",
                           @"volume":@"500"};
    NSDictionary *dic2 = @{@"price":@"0.002",
                           @"volume":@"450"};
    NSDictionary *dic3 = @{@"price":@"0.003",
                           @"volume":@"400"};
    NSDictionary *dic4 = @{@"price":@"0.004",
                           @"volume":@"350"};
    NSDictionary *dic5 = @{@"price":@"0.005",
                           @"volume":@"300"};
    NSDictionary *dic6 = @{@"price":@"0.006",
                           @"volume":@"250"};
    NSDictionary *dic7 = @{@"price":@"0.002",
                           @"volume":@"240"};
    NSDictionary *dic8 = @{@"price":@"0.003",
                           @"volume":@"230"};
    NSDictionary *dic9 = @{@"price":@"0.004",
                           @"volume":@"190"};
    NSDictionary *dic10 = @{@"price":@"0.005",
                            @"volume":@"150"};
    NSDictionary *dic110 = @{@"price":@"0.006",
                             @"volume":@"100"};
    NSMutableArray *buyArray = [NSMutableArray arrayWithObjects:dic1,dic2,dic3,dic4,dic5,dic6,dic7,dic8,dic9,dic10,dic110, nil];
    _lineChatView.buyDataArrOfPoint = buyArray;
    NSDictionary *dic66 = @{@"price":@"0.001",
                            @"volume":@"500"};
    NSDictionary *dic55 = @{@"price":@"0.002",
                            @"volume":@"400"};
    NSDictionary *dic44 = @{@"price":@"0.003",
                            @"volume":@"300"};
    NSDictionary *dic33 = @{@"price":@"0.004",
                            @"volume":@"200"};
    NSDictionary *dic22 = @{@"price":@"0.005",
                            @"volume":@"150"};
    NSDictionary *dic11 = @{@"price":@"0.006",
                            @"volume":@"100"};
    NSMutableArray *sellArray = [NSMutableArray arrayWithObjects:dic11,dic22,dic33,dic44,dic55,dic66,nil];
    _lineChatView.sellDataArrOfPoint = sellArray;
    
}

- (void)update:(UIButton *)btn {
    _lineChatView = nil;
    [_lineChatView removeFromSuperview];
    _lineChatView = [[CFDeepView alloc] initWithFrame:CGRectMake(15, 100, self.view.frame.size.width - 30, 230)];
    _lineChatView.backgroundColor = [UIColor colorWithRed:247/255.0 green:247/255.0  blue:247/255.0  alpha:1];
    [self.view addSubview:_lineChatView];
    _lineChatView.dataArrOfY = @[@"500",@"400",@"300",@"200",@"100"];//Y轴坐标
    _lineChatView.dataArrOfX = @[@"0.01",@"0.06",@"0.11"];//X轴坐标
    NSDictionary *dic1 = @{@"price":@"0.001",
                           @"volume":@"500"};
    NSDictionary *dic2 = @{@"price":@"0.002",
                           @"volume":@"450"};
    NSDictionary *dic3 = @{@"price":@"0.003",
                           @"volume":@"400"};
    NSDictionary *dic4 = @{@"price":@"0.004",
                           @"volume":@"350"};
    NSDictionary *dic5 = @{@"price":@"0.005",
                           @"volume":@"300"};
    NSDictionary *dic6 = @{@"price":@"0.006",
                           @"volume":@"250"};
    NSDictionary *dic7 = @{@"price":@"0.002",
                           @"volume":@"240"};
    NSDictionary *dic8 = @{@"price":@"0.003",
                           @"volume":@"230"};
    NSDictionary *dic9 = @{@"price":@"0.004",
                           @"volume":@"220"};
    NSDictionary *dic10 = @{@"price":@"0.005",
                            @"volume":@"210"};
    NSDictionary *dic110 = @{@"price":@"0.006",
                             @"volume":@"200"};
    NSMutableArray *buyArray = [NSMutableArray arrayWithObjects:dic1,dic2,dic3,dic4,dic5,dic6,dic7,dic8,dic9,dic10,dic110, nil];
    _lineChatView.buyDataArrOfPoint = buyArray;
    NSDictionary *dic66 = @{@"price":@"0.001",
                            @"volume":@"500"};
    NSDictionary *dic55 = @{@"price":@"0.002",
                            @"volume":@"400"};
    NSDictionary *dic44 = @{@"price":@"0.003",
                            @"volume":@"300"};
    NSDictionary *dic33 = @{@"price":@"0.004",
                            @"volume":@"200"};
    NSDictionary *dic22 = @{@"price":@"0.005",
                            @"volume":@"200"};
    NSDictionary *dic11 = @{@"price":@"0.006",
                            @"volume":@"200"};
    NSMutableArray *sellArray = [NSMutableArray arrayWithObjects:dic11,dic22,dic33,dic44,dic55,dic66,nil];
    _lineChatView.sellDataArrOfPoint = sellArray;
}

@end
