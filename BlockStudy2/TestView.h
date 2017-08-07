//
//  TestView.h
//  BlockStudy
//
//  Created by byztl on 2017/8/7.
//  Copyright © 2017年 byztl. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^testBlock)(NSString *str);

@interface TestView : UIView
@property (nonatomic, strong)testBlock testBlock;


- (void)returnStr:(testBlock)testBlock;
@end
