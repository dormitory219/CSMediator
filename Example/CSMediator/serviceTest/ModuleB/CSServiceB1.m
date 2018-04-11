//
//  CSServiceB1.m
//  CSMediator_Example
//
//  Created by joy_yu on 2018/4/11.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#import "CSServiceB1.h"
#import "CSServiceB2.h"

@implementation CSServiceB1

- (id)getServiceB1Data;
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    return NSStringFromClass([self class]);
}

//模块内不需区分详细,无组件概念，模块内的服务之间直接引用
- (void)getServiceB2Data
{
    CSServiceB2 *service = [[CSServiceB2 alloc] init];
    [service getServiceB2Data];
}

@end
