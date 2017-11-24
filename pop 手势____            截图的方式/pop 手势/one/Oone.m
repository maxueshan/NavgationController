//
//  Oone.m
//  pop 手势
//
//  Created by xueshan on 2017/10/19.
//  Copyright © 2017年 xueshan. All rights reserved.
//

#import "Oone.h"
#import "UIImage+color.h"

@interface Oone ()

@end

@implementation Oone
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
//    self.navigationController.navigationBar.barTintColor = [UIColor greenColor];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor redColor]] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];

    
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
//    [self.navigationController setNavigationBarHidden:NO animated:YES];

    
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSLog(@"%@",self.view.window);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:YES];
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
