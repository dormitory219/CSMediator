//
//  CSServiceA1Imp.m
//  CSMediator_Example
//
//  Created by joy_yu on 2018/4/11.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#import "CSServiceA1Imp.h"
#import "CSServiceA1.h"

@implementation CSServiceA1Imp

+ (void)load
{
    @autoreleasepool {
        [CSMediator registerService:@protocol(CSServiceA1Protocol)  withImpl:self];
    }
}


- (id)getServiceA1Data
{
    CSServiceA1 *service = [[CSServiceA1 alloc] init];
    return service.getServiceA1Data;
}

@end
