//
//  UIView+DLMFrame.m
//  DLMKit
//
//  Created by YangJian on 2016/10/12.
//

#import "UIView+DLMFrame.h"

@implementation UIView (DLMFrame)

#pragma mark getter
- (CGFloat)dlm_x
{
    return CGRectGetMinX(self.frame);
}

- (CGFloat)dlm_y
{
    return CGRectGetMinY(self.frame);
}

- (CGFloat)dlm_width
{
    return CGRectGetWidth(self.frame);
}

- (CGFloat)dlm_height
{
    return CGRectGetHeight(self.frame);
}

- (CGFloat)dlm_right
{
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)dlm_bottom
{
    return CGRectGetMaxY(self.frame);
}

- (CGFloat)dlm_centerX
{
    return CGRectGetMidX(self.frame);
}

- (CGFloat)dlm_centerY
{
    return CGRectGetMinY(self.frame);
}

- (CGPoint)dlm_origin
{
    return self.frame.origin;
}

- (CGSize)dlm_size
{
    return self.frame.size;
}

#pragma mark setter
- (void)dlm_setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)dlm_setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (void)dlm_setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)dlm_setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)dlm_setRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (void)dlm_setBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (void)dlm_setCenterX:(CGFloat)centerX
{
    [self setCenter:CGPointMake(centerX, self.dlm_centerY)];
}

- (void)dlm_setCenterY:(CGFloat)centerY
{
    [self setCenter:CGPointMake(self.dlm_centerX, centerY)];
}

- (void)dlm_setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (void)dlm_setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

@end
