//
//  CTFrameParserConfig.m
//  CoreText
//
//  Created by 周卫东 on 2018/8/1.
//  Copyright © 2018年 周卫东. All rights reserved.
//

#import "CTFrameParserConfig.h"

@implementation CTFrameParserConfig

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.width = 200;
        self.fontSize = 16.0f;
        self.lineSpace = 8.0f;
        self.textColor = RGBA(231.0, 231.0, 231.0, 1.0);
    }
    return self;
}

@end
