//
//  CSServiceA1.m
//  CSMediator_Example
//
//  Created by joy_yu on 2018/4/10.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#import "CSServiceA1.h"
#import "CSMediator.h"
#import "CSModuleAProtocol.h"

@implementation CSServiceA1

- (id)getServiceA1Data
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    return NSStringFromClass([self class]);
}

//模块内分组件间的解耦
- (void)getServiceA2Data
{
   id<CSServiceA2Protocol> service = [CSMediator serviceForProtocol:@protocol(CSServiceA2Protocol)];
   [service getServiceA2Data];
}


@end
