//
//  CoreTextData.m
//  CoreText
//
//  Created by 周卫东 on 2018/8/1.
//  Copyright © 2018年 周卫东. All rights reserved.
//

#import "CoreTextData.h"

@implementation CoreTextData

- (void)setCtFrame:(CTFrameRef)ctFrame {
    if (_ctFrame != ctFrame) {
        if (_ctFrame != nil) {
            CFRelease(_ctFrame);
        }
    }
    
    CFRetain(ctFrame);
    _ctFrame = ctFrame;
}

- (void)dealloc
{
    if (_ctFrame != nil) {
        CFRelease(_ctFrame);
        _ctFrame = nil;
    }
}

@end
