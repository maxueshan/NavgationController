//
//  UIImage+color.m
//  pop 手势
//
//  Created by xueshan on 2017/10/19.
//  Copyright © 2017年 xueshan. All rights reserved.
//

#import "UIImage+color.h"

@implementation UIImage (color)

+ (UIImage *)imageWithColor:(UIColor *)color{
  
CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
UIGraphicsBeginImageContext(rect.size);
CGContextRef context = UIGraphicsGetCurrentContext();
CGContextSetFillColorWithColor(context, [color CGColor]);
CGContextFillRect(context, rect);
UIImage *backColorImage = UIGraphicsGetImageFromCurrentImageContext();
UIGraphicsEndImageContext();
    
    return backColorImage;
    
}

@end
