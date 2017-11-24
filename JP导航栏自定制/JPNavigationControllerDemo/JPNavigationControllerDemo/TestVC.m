//
//  TestVC.m
//  JPNavigationControllerDemo
//
//  Created by xueshan on 2017/10/19.
//  Copyright © 2017年 尹久盼. All rights reserved.
//

#import "TestVC.h"
#import "OneViewController.h"
#import "UIColor+ImageGenerate.h"

@interface TestVC ()
@property(nonatomic,strong)UIButton *btn;

@end

@implementation TestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"TestVC";

    [self.view addSubview:self.btn];
    // 隐藏导航栏.
//    self.navigationController.navigationBar.hidden = YES;
    
    
    [self.navigationController.navigationBar setBackgroundImage:[[UIColor greenColor] jp_image] forBarMetrics:UIBarMetricsDefault];
    
}


- (UIButton *)btn{
    if (!_btn) {
        _btn = [[UIButton alloc]initWithFrame:CGRectMake(150, 200, 200, 90 )];
        _btn.backgroundColor = [UIColor redColor];
        [_btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn;
}
- (void)btnClicked{
    OneViewController *vc = [OneViewController new];
    vc.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:YES];
}

 



@end



