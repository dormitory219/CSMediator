//
//  CSServiceA2Imp.m
//  CSMediator_Example
//
//  Created by joy_yu on 2018/4/11.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#import "CSServiceA2Imp.h"
#import "CSServiceA2.h"

@implementation CSServiceA2Imp

+ (void)load
{
    @autoreleasepool {
        [CSMediator registerService:@protocol(CSServiceA2Protocol)  withImpl:self];
    }
}


- (id)getServiceA2Data
{
    CSServiceA2 *service = [[CSServiceA2 alloc] init];
    return service.getServiceA2Data;
}

@end
