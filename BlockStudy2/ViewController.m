//
//  ViewController.m
//  BlockStudy2
//
//  Created by byztl on 2017/8/7.
//  Copyright © 2017年 byztl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong)TestView *testView;
@property (nonatomic, strong)NSString *str;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TestView *testView = [[TestView alloc] initWithFrame:CGRectMake(20, 20, 400, 500)];
    [self.view addSubview:testView];
    self.testView = testView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)printClick:(id)sender {
    [self.testView returnStr:^(NSString *str) {
        NSLog(@"%@",str);
        self.str = str;
    }];
    NSLog(@"%@-------",self.str);
}

@end
