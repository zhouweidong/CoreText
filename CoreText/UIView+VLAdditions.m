//
//  UIView+VLAdditions.m
//  iReader
//
//  Created by Jeffrey on 4/29/14.
//  Copyright (c) 2014 iReader. All rights reserved.
//

#import "UIView+VLAdditions.h"

@implementation UIView (VLAdditions)

#pragma mark - Frame

- (void)setX:(CGFloat)x
{
    CGRect frame = CGRectMake(x, self.y, self.width, self.height);
    self.frame = frame;
}

- (CGFloat)x
{
    return CGRectGetMinX(self.frame);
}

- (void)setY:(CGFloat)y
{
    CGRect frame = CGRectMake(self.x, y, self.width, self.height);
    self.frame = frame;
}

- (CGFloat)y
{
    return CGRectGetMinY(self.frame);
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = CGRectMake(self.x, self.y, width, self.height);
    self.frame = frame;
}

- (CGFloat)width
{
    return CGRectGetWidth(self.frame);
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = CGRectMake(self.x, self.y, self.width, height);
    self.frame = frame;
}

- (CGFloat)height
{
    return CGRectGetHeight(self.frame);
}

- (void)setSize:(CGSize)size
{
    CGRect frame = CGRectMake(self.x, self.y, size.width, size.height);
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = CGRectMake(origin.x, origin.y, self.width, self.height);
    self.frame = frame;
}

- (CGPoint)origin
{
    return self.frame.origin;
}

- (void)setTop:(CGFloat)top
{
    self.y = top;
}

- (CGFloat)top
{
    return self.y;
}

- (void)setBottom:(CGFloat)bottom
{
    self.y = bottom - self.height;
}

- (CGFloat)bottom
{
    return CGRectGetMaxY(self.frame);
}

- (void)setLeft:(CGFloat)left
{
    self.x = left;
}

- (CGFloat)left
{
    return self.x;
}

- (void)setRight:(CGFloat)right
{
    self.x = right - self.width;
}

- (CGFloat)right
{
    return CGRectGetMaxX(self.frame);
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


#pragma mark - Bounds

- (CGSize)boundsSize
{
    return self.bounds.size;
}

- (CGFloat)boundsWidth
{
    return self.bounds.size.width;
}

- (CGFloat)boundsHeight
{
    return self.bounds.size.height;
}

@end
