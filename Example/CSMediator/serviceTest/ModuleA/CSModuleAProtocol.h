//
//  CSServiceAModuleProtocol.h
//  CSMediator
//
//  Created by joy_yu on 2018/4/10.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#ifndef CSServiceAModuleProtocol_h
#define CSServiceAModuleProtocol_h

//该模式为最细颗粒度的解耦方式，用于不同模块module之间，同一模块内不同组件service之间
//外部模块通过CSModuleAProtocol接口访问数据，moduleA模块内组件访问通过每个组件service对应的protocol访问数据

@protocol CSServiceA1Protocol <NSObject>

- (id)getServiceA1Data;

@end


@protocol CSServiceA2Protocol <NSObject>

- (id)getServiceA2Data;

@end

@protocol CSModuleAProtocol <NSObject>

- (id)getServiceA1Data;

- (id)getServiceA2Data;

@end


#endif /* CSServiceAModuleProtocol_h */
