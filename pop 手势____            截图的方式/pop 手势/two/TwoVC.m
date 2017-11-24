
//
//  TwoVC.m
//  pop 手势
//
//  Created by xueshan on 2017/10/18.
//  Copyright © 2017年 xueshan. All rights reserved.
//

#import "TwoVC.h"
#import "Tone.h"

@interface TwoVC ()
@property(nonatomic,strong)UIButton *btn;

@end

@implementation TwoVC
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"two";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.btn];

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
    Tone *one = [Tone new];
    
    [self.navigationController pushViewController:one animated:1];
    
    
}


@end
