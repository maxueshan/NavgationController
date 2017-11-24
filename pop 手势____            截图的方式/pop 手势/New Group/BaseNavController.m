//
//  BaseNavController.m
//  pop 手势
//
//  Created by xueshan on 2017/10/18.
//  Copyright © 2017年 xueshan. All rights reserved.
//

#import "BaseNavController.h"

@interface BaseNavController () <UIGestureRecognizerDelegate>

@end

@implementation BaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.navigationBar.barTintColor = [UIColor redColor];

    //系统返回
//    self.interactivePopGestureRecognizer.delegate = self;
    
    //自定义:全屏返回
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    [self.view addGestureRecognizer:pan];
    self.interactivePopGestureRecognizer.enabled = NO;
    pan.delegate = self;
    
    
}
//消除方法警告
-(void)handleNavigationTransition:(UIPanGestureRecognizer *)pan{
    
}

// 决定是否触发手势
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    return self.childViewControllers.count > 1;
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:animated];
}

@end
