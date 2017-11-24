//
//  TwoViewController.m
//  JPNavigationControllerDemo
//
//  Created by xueshan on 2017/10/19.
//  Copyright © 2017年 尹久盼. All rights reserved.
//

#import "TwoViewController.h"
#import "UIColor+ImageGenerate.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"TwoViewController";
    self.view.backgroundColor = [UIColor whiteColor];
//    self.navigationController.navigationBar.barTintColor = [UIColor greenColor];
    [self.navigationController.navigationBar setBackgroundImage:[[UIColor greenColor] jp_image] forBarMetrics:UIBarMetricsDefault];


    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
