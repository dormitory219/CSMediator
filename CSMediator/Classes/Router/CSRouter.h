//
//  CSRouter.h
//  CSMediator_Example
//
//  Created by 余强 on 2018/4/7.
//  Copyright © 2018年 dormitory219. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSRouterModuleProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface CSRouter : NSObject

+ (nonnull instancetype)router;

- (void)registerRouterModule:(nonnull id<CSRouterModuleProtocol>)module;

- (BOOL)routerURL:(nonnull NSString *)url withParameter:(nullable NSDictionary *)parameter;

@end

NS_ASSUME_NONNULL_END
