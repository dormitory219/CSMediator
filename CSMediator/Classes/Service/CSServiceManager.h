//
//  CSModuleManager.h
//  CSModuleManager
//
//  Created by 余强 on 2018/1/27.
//  Copyright © 2018年 余强. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSServiceModuleProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CSService <NSObject>

@end

@interface CSServiceManager : NSObject

+ (instancetype)sharedManager;

@end


@interface CSServiceManager(Service)

- (void)registerService:(Protocol *)proto withImpl:(Class)implClass;

- (__nullable id)serviceForProtocol:(Protocol *)serviceProtocol;

@end

NS_ASSUME_NONNULL_END
