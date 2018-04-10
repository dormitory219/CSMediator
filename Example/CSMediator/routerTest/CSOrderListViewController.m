//
//  CSOrderListViewController.m
//  CSMediator_Example
//
//  Created by 余强 on 2018/4/10.
//  Copyright © 2018年 dormitory219. All rights reserved.
//

#import "CSOrderListViewController.h"

@interface CSOrderListViewController ()

@end

@implementation CSOrderListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneAction:(id)sender
{
    self.finishBlock? self.finishBlock() : nil;
}

@end
