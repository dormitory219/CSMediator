//
//  CSServiceBModuleProtocol.h
//  CSMediator
//
//  Created by joy_yu on 2018/4/10.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#ifndef CSServiceBModuleProtocol_h
#define CSServiceBModuleProtocol_h

//该模式为粗颗粒度的解耦方式，用于不同模块module之间
//外部模块通过CSModuleAProtocol接口访问数据，moduleA模块内组件访问通过直接应用相应的service组件

@protocol CSModuleBProtocol <NSObject>

- (id)getServiceB1Data;

- (id)getServiceB2Data;

@end

#endif /* CSServiceBModuleProtocol_h */
