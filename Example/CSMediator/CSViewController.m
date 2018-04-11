//
//  CSViewController.m
//  CSMediator
//
//  Created by joy_yu on 04/07/2018.
//  Copyright (c) 2018 joy_yu. All rights reserved.
//

#import "CSViewController.h"
#import "CSMediator.h"
#import "CSModuleAProtocol.h"
#import "CSModuleBProtocol.h"

@interface CSViewController ()

@end

@implementation CSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)routeAction:(id)sender
{
  
  //  [CSMediator routerURL: @"Order/orderList" withParameter:@{@"orderID":@(12)}];
//    [CSMediator routerURL: @"Order/orderDetail" withParameter:@{@"orderTitle":@"shop"}];
//    [CSMediator routerURL:[NSString stringWithFormat: @"Order/orderList?pageID=12&docName=%@",@"pp"] withParameter:@{@"orderID":@(12)}];
    
    void(^finishBlock)() = ^void(){
        NSLog(@"pop back and finishBlock to viewController");
    };
    [CSMediator routerURL: @"Order/orderList" withParameter:@{
                                                              @"orderID":@(12),
                                                              @"finishBlock":(finishBlock)
                                                              }
     ];
}

- (IBAction)serviceAction:(id)sender
{
  id <CSModuleAProtocol> service1 = [CSMediator serviceForProtocol:@protocol(CSModuleAProtocol)];
  [service1 getServiceA1Data];
    
  id <CSServiceA2Protocol> service2 = [CSMediator serviceForProtocol:@protocol(CSServiceA2Protocol)];
  [service2 getServiceA2Data];
    
  id <CSModuleBProtocol> service3 =  [CSMediator serviceForProtocol:@protocol(CSModuleBProtocol)];
  [service3 getServiceB1Data];
}

@end
