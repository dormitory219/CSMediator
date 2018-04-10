//
//  CSViewController.m
//  CSMediator
//
//  Created by dormitory219 on 04/07/2018.
//  Copyright (c) 2018 dormitory219. All rights reserved.
//

#import "CSViewController.h"
#import <CSMediator/CSMediator.h>

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
        NSLog(@"finishBlock");
    };
    [CSMediator routerURL: @"Order/orderList" withParameter:@{
                                                              @"orderID":@(12),
                                                              @"finishBlock":(finishBlock)
                                                              }
     ];
}

- (IBAction)serviceAction:(id)sender
{
    
}

@end
