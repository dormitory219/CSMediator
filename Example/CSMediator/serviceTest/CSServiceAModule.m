//
//  CSServiceAModule.m
//  CSMediator_Example
//
//  Created by 余强 on 2018/4/10.
//  Copyright © 2018年 dormitory219. All rights reserved.
//

#import "CSServiceAModule.h"
#import "CSServiceAModuleProtocol.h"
#import "CSServiceA1.h"
#import "CSServiceA2.h"

@implementation CSServiceAModule

+ (void)load
{
    @autoreleasepool {
         [CSMediator registerService:@protocol(CSServiceAModuleProtocol)  withImpl:self];
    }
}


- (id)getServiceAData
{
    CSServiceA1 *service = [[CSServiceA1 alloc] init];
    return service.getServiceAData;
}

- (id)getServiceBData
{
    CSServiceA2 *service = [[CSServiceA2 alloc] init];
    return service.getServiceBData;
}

@end
