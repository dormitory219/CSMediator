//
//  CSServiceA2.m
//  CSMediator_Example
//
//  Created by joy_yu on 2018/4/10.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#import "CSServiceA2.h"

@implementation CSServiceA2

- (id)getServiceA2Data;
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    return NSStringFromClass([self class]);
}

@end
