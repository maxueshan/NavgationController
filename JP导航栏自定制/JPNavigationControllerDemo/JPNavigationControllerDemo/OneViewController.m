//
//  OneViewController.m
//  JPNavigationControllerDemo
//
//  Created by xueshan on 2017/10/19.
//  Copyright © 2017年 尹久盼. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"OneViewController";
    
    
    //不起作用
//    self.navigationController.navigationBar.barTintColor = [UIColor greenColor];
    
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    TwoViewController *vc = [TwoViewController new];
    [self.navigationController pushViewController:vc animated:YES];
    
}


@end
