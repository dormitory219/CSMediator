//
//  CSServiceAModule.m
//  CSMediator_Example
//
//  Created by joy_yu on 2018/4/10.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#import "CSServiceAModule.h"
#import "CSModuleAProtocol.h"

@implementation CSServiceAModule

+ (void)load
{
    @autoreleasepool {
         [CSMediator registerService:@protocol(CSModuleAProtocol) withImpl:self];
    }
}

- (id)getServiceA1Data;
{
    id <CSServiceA1Protocol> service =  [CSMediator serviceForProtocol:@protocol(CSServiceA1Protocol)];
    return service.getServiceA1Data;
}

- (id)getServiceA2Data;
{
    id <CSServiceA2Protocol> service =  [CSMediator serviceForProtocol:@protocol(CSServiceA2Protocol)];
    return service.getServiceA2Data;
}

@end
