//
//  TestView.m
//  BlockStudy
//
//  Created by byztl on 2017/8/7.
//  Copyright © 2017年 byztl. All rights reserved.
//

#import "TestView.h"

@implementation TestView

- (void)returnStr:(testBlock)testBlock{
    self.testBlock = testBlock;
    UITextField *field = self.subviews[0];
    testBlock(field.text);
}


- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor grayColor];
    UITextField *field = [[UITextField alloc] initWithFrame:CGRectMake(20, 20, 300, 50)];
    field.backgroundColor = [UIColor whiteColor];
    [self addSubview:field];
    return self;
}

@end
