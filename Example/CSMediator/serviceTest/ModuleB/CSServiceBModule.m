//
//  CSServiceBModule.m
//  CSMediator_Example
//
//  Created by joy_yu on 2018/4/10.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#import "CSServiceBModule.h"
#import "CSServiceB1.h"
#import "CSServiceB2.h"

@implementation CSServiceBModule

+ (void)load
{
    @autoreleasepool {
        [CSMediator registerService:@protocol(CSModuleBProtocol)  withImpl:self];
    }
}

- (id)getServiceB1Data;
{
    CSServiceB1 *service =  [[CSServiceB1 alloc] init];
    return service.getServiceB1Data;
}

- (id)getServiceB2Data;
{
    CSServiceB2 *service =  [[CSServiceB2 alloc] init];
    return service.getServiceB2Data;
}

@end
