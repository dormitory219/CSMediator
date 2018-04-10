//
//  CSRouterModule.m
//  CSMediator_Example
//
//  Created by 余强 on 2018/4/8.
//  Copyright © 2018年 dormitory219. All rights reserved.
//

#import "CSRouterModule.h"
#import "CSMediator.h"

@implementation CSRouterModule

+(void)load
{
    @autoreleasepool{
       // [CSMediator registerRouterModule: [[self alloc] init]];
    }
}

-(BOOL)canRouteModule:(NSString *)urlString
{
    NSArray *pairs = [urlString componentsSeparatedByString:@"/"];
    NSString *moduleName = pairs.firstObject;
    if ([moduleName isEqualToString:@"xxx"])
    {
        return YES;
    }
    return NO;
}

- (nullable id)routerURL:(nonnull NSString *)urlString params:(NSDictionary *)params
{
    if (![self canRouteModule:urlString])
    {
        return nil;
    }
    if ([urlString isEqualToString:@""])
    {
        //push or present vc
    }
    else
    {
        //push or present vc
    }
    return nil;
}

@end
