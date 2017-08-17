//
//  UIView+LYView.m
//  LYFM
//
//  Created by 郑雪利 on 2017/8/17.
//  Copyright © 2017年 郑雪利. All rights reserved.
//

#import "UIView+LYView.h"
#import <objc/runtime.h>

const void* nameKey = @"name111111111";

@implementation UIView (LYView)

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}


//- (void)setName:(NSString *)name
//{
//    objc_setAssociatedObject(self, nameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
//}
//
//- (NSString *)name
//{
//    return objc_getAssociatedObject(self, nameKey);
//}


@end