
//
//  CSOrderRouterModule.m
//  CSMediator_Example
//
//  Created by joy_yu on 2018/4/10.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#import "CSOrderRouterModule.h"
#import "CSOrderListViewController.h"
#import "CSOrderDetailViewController.h"

@implementation CSOrderRouterModule

+(void)load
{
    @autoreleasepool{
         [CSMediator registerRouterModule: [[self alloc] init]];
    }
}

-(BOOL)canRouteModule:(NSString *)urlString
{
    NSArray *pairs = [urlString componentsSeparatedByString:@"/"];
    NSString *moduleName = pairs.firstObject;
    if ([moduleName isEqualToString:@"Order"])
    {
        return YES;
    }
    return NO;
}

- (nullable id)routerURL:(NSString *)urlString params:(NSDictionary *)params
{
    NSLog(@"router parameter:%@",params);
    if (![self canRouteModule:urlString])
    {
        return nil;
    }
    if ([urlString isEqualToString:@"Order/orderList"])
    {
        CSOrderListViewController *orderListVc = [[CSOrderListViewController alloc] init];
        orderListVc.finishBlock = params[@"finishBlock"];
        [(UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController pushViewController:orderListVc animated:YES];
    }
    else if ([urlString isEqualToString:@"Order/orderDetail"])
    {
        CSOrderDetailViewController *orderDetailVc = [[CSOrderDetailViewController alloc] init];
         [(UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController pushViewController:orderDetailVc animated:YES];
    }
    return nil;
}



@end
