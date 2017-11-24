//
//  OneVC.m
//  pop 手势
//
//  Created by xueshan on 2017/10/18.
//  Copyright © 2017年 xueshan. All rights reserved.
//

#import "OneVC.h"
#import "Oone.h"

@interface OneVC () 
@property(nonatomic,strong)UIButton *btn;

@end

@implementation OneVC

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    [self.navigationController setNavigationBarHidden:NO animated:YES];
//    [self.navigationController setNavigationBarHidden:YES animated:YES];

    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];

}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
}
 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"one";
    
    [self.view addSubview:self.btn];
//    self.navigationController.navigationBar.barTintColor = [UIColor redColor];

    NSLog(@"%@",self.view.window);
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

    Oone *one = [Oone new];

    [self.navigationController pushViewController:one animated:1];
    
}


@end
