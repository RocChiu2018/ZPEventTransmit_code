//
//  ZPWindow.m
//  事件的产生和传递
//
//  Created by 赵鹏 on 2018/10/24.
//  Copyright © 2018 apple. All rights reserved.
//

#import "ZPWindow.h"

@implementation ZPWindow

/**
 根据触摸事件传递的顺序，触摸事件会先传递给UIApplication然后传递给UIWindow，UIWindow会自动调用这个方法在视图层次结构中找到一个最合适的视图控件来处理这个触摸事件；
 point参数：代表当前的触摸点，point这个点所在的坐标系就是调用这个方法的视图控件所代表的那个坐标系。
 */
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView *fitView = [super hitTest:point withEvent:event];
    NSLog(@"%s, %@", __func__, fitView);
    
    return fitView;
}

/**
 判断触摸点是否在方法调用者（视图控件）上，一般返回YES。
 */
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    return YES;
}

@end
