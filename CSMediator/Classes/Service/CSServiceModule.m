//
//  CSServiceModule.m
//  CSMediator_Example
//
//  Created by 余强 on 2018/4/8.
//  Copyright © 2018年 dormitory219. All rights reserved.
//

#import "CSServiceModule.h"
#import "CSMediator.h"
#import "CSServiceModuleProtocol.h"

@implementation CSServiceModule

+ (void)load
{
    @autoreleasepool {
       // [CSMediator registerService:@protocol(CSServiceModuleProtocol)  withImpl:self];
    }
}

//do sth

@end
