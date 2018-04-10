//
//  RouterModuleProtocol.h
//  CSMediator
//
//  Created by 余强 on 2018/4/8.
//  Copyright © 2018年 dormitory219. All rights reserved.
//

#ifndef RouterModuleProtocol_h
#define RouterModuleProtocol_h


@protocol CSRouterModuleProtocol <NSObject>

@optional
-(BOOL)canRouteModule:(nonnull NSString *)URL;

@required
- (nullable id)routerURL:(nonnull NSString *)URL params:(nullable NSDictionary *)params;

@end

#endif /* RouterModuleProtocol_h */
