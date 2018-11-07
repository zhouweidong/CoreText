//
//  CTDisplayView.m
//  CoreText
//
//  Created by 周卫东 on 2018/7/31.
//  Copyright © 2018年 周卫东. All rights reserved.
//

#import "CTDisplayView.h"
#import <CoreText/CTFramesetter.h>

@implementation CTDisplayView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1, -1);
    
    if (self.data) {
        CTFrameDraw(self.data.ctFrame, context);
    }
}


@end
