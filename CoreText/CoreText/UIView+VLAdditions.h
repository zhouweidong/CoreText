//
//  UIView+VLAdditions.h
//  iReader
//
//  Created by Jeffrey on 4/29/14.
//  Copyright (c) 2014 iReader. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (VLAdditions)

///------------
/// @name frame
///------------
@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGSize  size;
@property (nonatomic) CGPoint origin;
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

///-------------
/// @name bounds
///-------------
@property (nonatomic, readonly) CGSize  boundsSize;
@property (nonatomic, readonly) CGFloat boundsWidth;
@property (nonatomic, readonly) CGFloat boundsHeight;

@end
