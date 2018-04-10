//
//  CSMediator.h
//  CSMediator_Example
//
//  Created by 余强 on 2018/4/7.
//  Copyright © 2018年 dormitory219. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSRouter.h"
#import "CSServiceManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface CSMediator : NSObject

@end

@interface CSMediator(Router)

+ (void)registerRouterModule:(nonnull id<CSRouterModuleProtocol>)module;

+ (void)routerURL:(nonnull NSString *)urlString withParameter:(nullable NSDictionary *)parameter;

@end

@interface CSMediator(Service)

+ (void)registerService:(nonnull Protocol *)proto withImpl:(nonnull Class)implClass;

+ (nullable id)serviceForProtocol:(nonnull Protocol *)serviceProtocol;

@end

NS_ASSUME_NONNULL_END
