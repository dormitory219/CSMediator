//
//  CSMediator.m
//  CSMediator_Example
//
//  Created by 余强 on 2018/4/7.
//  Copyright © 2018年 dormitory219. All rights reserved.
//

#import "CSMediator.h"

@implementation CSMediator

@end

@implementation CSMediator(Router)

+ (void)registerRouterModule:(id<CSRouterModuleProtocol>)module
{
    [[CSRouter router] registerRouterModule:module];
}

+ (void)routerURL:(nonnull NSString *)urlString withParameter:(nullable NSDictionary *)parameter
{
    [[CSRouter router] routerURL:urlString withParameter:parameter];
}

@end

@implementation CSMediator(Service)

+ (void)registerService:(Protocol *)proto withImpl:(Class)implClass
{
    [[CSServiceManager sharedManager] registerService:proto withImpl:implClass];
}

+ (id)serviceForProtocol:(Protocol *)serviceProtocol
{
    return [[CSServiceManager sharedManager] serviceForProtocol:serviceProtocol];
}

@end
