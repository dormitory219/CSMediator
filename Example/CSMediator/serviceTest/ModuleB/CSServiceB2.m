//
//  CSServiceB2.m
//  CSMediator_Example
//
//  Created by joy_yu on 2018/4/11.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#import "CSServiceB2.h"

@implementation CSServiceB2

- (id)getServiceB2Data;
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    return NSStringFromClass([self class]);
}

@end
