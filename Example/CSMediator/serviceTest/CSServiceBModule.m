//
//  CSServiceBModule.m
//  CSMediator_Example
//
//  Created by 余强 on 2018/4/10.
//  Copyright © 2018年 dormitory219. All rights reserved.
//

#import "CSServiceBModule.h"

@implementation CSServiceBModule

+ (void)load
{
    @autoreleasepool {
        [CSMediator registerService:@protocol(CSServiceBModuleProtocol)  withImpl:self];
    }
}


@end
