//
//  CTFrameParserConfig.h
//  CoreText
//
//  Created by 周卫东 on 2018/8/1.
//  Copyright © 2018年 周卫东. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTFrameParserConfig : NSObject
@property(nonatomic, assign) CGFloat width;
@property(nonatomic, assign) CGFloat fontSize;
@property(nonatomic, assign) CGFloat lineSpace;
@property(nonatomic, strong) UIColor *textColor;

@end
