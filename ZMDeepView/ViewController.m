//
//  ViewController.m
//  ZMDeepView
//
//  Created by ZM on 2018/9/14.
//  Copyright © 2018年 hexuren. All rights reserved.
//

#import "ViewController.h"
#import "CFDeepView.h"
#define DefineWeakSelf __weak __typeof(self) weakSelf = self

@interface ViewController ()

@property (nonatomic, strong) CFDeepView *klineDeepView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpData];
    [self setUpView];
}

- (void)setUpView {
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(100, 400, 200, 50)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"更新数据" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(update:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [self.view addSubview:self.klineDeepView];
//    DefineWeakSelf;
//    [self.klineDeepView deepViewTouchBlock:^(BOOL ifTouching) {
//        if (ifTouching) {
//            weakSelf.contentScrollView.scrollEnabled = NO;
//        } else {
//            weakSelf.contentScrollView.scrollEnabled = YES;
//        }
//    }];
}

- (void)setUpData {
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
    [self.klineDeepView setDataArrOfX:@[@"0.01",@"0.03",@"0.06",@"0.08",@"0.11"]];
    double maxY = 500.00;
    NSString *y1 = @"";
    if (maxY > 1000) {
        y1 = [NSString stringWithFormat:@"%.2fK",maxY/1000];
    }
    else{
        y1 = [NSString stringWithFormat:@"%.2f",maxY];
    }
    NSString *y2 = @"";
    if (maxY > 1000) {
        y2 = [NSString stringWithFormat:@"%.2fK",maxY/5*4/1000];
    }
    else{
        y2 = [NSString stringWithFormat:@"%.2f",maxY/5*4];
    }
    NSString *y3 = @"";
    if (maxY > 1000) {
        y3 = [NSString stringWithFormat:@"%.2fK",maxY/5*3/1000];
    }
    else{
        y3 = [NSString stringWithFormat:@"%.2f",maxY/5*3];
    }
    NSString *y4 = @"";
    if (maxY > 1000) {
        y4 = [NSString stringWithFormat:@"%.2fK",maxY/5*2/1000];
    }
    else{
        y4 = [NSString stringWithFormat:@"%.2f",maxY/5*2];
    }
    NSString *y5 = @"";
    if (maxY > 1000) {
        y5 = [NSString stringWithFormat:@"%.2fK",maxY/5/1000];
    }
    else{
        y5 = [NSString stringWithFormat:@"%.2f",maxY/5];
    }
    [self.klineDeepView setDataArrOfY:@[y1,y2,y3,y4,y5]];
    self.klineDeepView.maxY = maxY;
    [self.klineDeepView setBuyDataArrOfPoint:buyArray];
    [self.klineDeepView setSellDataArrOfPoint:sellArray];
    [self.klineDeepView setSymbol:@"EOS"];
}

- (void)update:(UIButton *)btn {
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
    [self.klineDeepView setDataArrOfX:@[@"0.01",@"0.03",@"0.06",@"0.08",@"0.11"]];
    double maxY = 500.00;
    NSString *y1 = @"";
    if (maxY > 1000) {
        y1 = [NSString stringWithFormat:@"%.2fK",maxY/1000];
    }
    else{
        y1 = [NSString stringWithFormat:@"%.2f",maxY];
    }
    NSString *y2 = @"";
    if (maxY > 1000) {
        y2 = [NSString stringWithFormat:@"%.2fK",maxY/5*4/1000];
    }
    else{
        y2 = [NSString stringWithFormat:@"%.2f",maxY/5*4];
    }
    NSString *y3 = @"";
    if (maxY > 1000) {
        y3 = [NSString stringWithFormat:@"%.2fK",maxY/5*3/1000];
    }
    else{
        y3 = [NSString stringWithFormat:@"%.2f",maxY/5*3];
    }
    NSString *y4 = @"";
    if (maxY > 1000) {
        y4 = [NSString stringWithFormat:@"%.2fK",maxY/5*2/1000];
    }
    else{
        y4 = [NSString stringWithFormat:@"%.2f",maxY/5*2];
    }
    NSString *y5 = @"";
    if (maxY > 1000) {
        y5 = [NSString stringWithFormat:@"%.2fK",maxY/5/1000];
    }
    else{
        y5 = [NSString stringWithFormat:@"%.2f",maxY/5];
    }
    [self.klineDeepView setDataArrOfY:@[y1,y2,y3,y4,y5]];
    self.klineDeepView.maxY = maxY;
    [self.klineDeepView setBuyDataArrOfPoint:buyArray];
    [self.klineDeepView setSellDataArrOfPoint:sellArray];
    [self.klineDeepView setSymbol:@"EOS"];
}


- (CFDeepView *)klineDeepView {
    if (!_klineDeepView) {
        _klineDeepView = [[CFDeepView alloc]initWithFrame:CGRectMake(15, 100, self.view.frame.size.width - 30, 230)];
        [_klineDeepView setSymbol:@"EOS"];
    }
    return _klineDeepView;
}

@end
