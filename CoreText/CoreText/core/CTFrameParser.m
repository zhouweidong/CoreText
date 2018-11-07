//
//  CTFrameParser.m
//  CoreText
//
//  Created by 周卫东 on 2018/8/1.
//  Copyright © 2018年 周卫东. All rights reserved.
//

#import "CTFrameParser.h"

@implementation CTFrameParser

+ (CoreTextData *)parseContent:(NSString *)contnet config:(CTFrameParserConfig *)config {
    NSDictionary *attributeds = [self attributedWithConfig:config];
    NSAttributedString *contentString = [[NSAttributedString alloc] initWithString:contnet attributes:attributeds];
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)contentString);
    
    CGSize retrictSize = CGSizeMake(config.width, CGFLOAT_MAX);
    CGSize coreTextSize = CTFramesetterSuggestFrameSizeWithConstraints(framesetter, CFRangeMake(0, 0), nil, retrictSize, nil);
    CGFloat textHeight = coreTextSize.height;
    
    CTFrameRef frame = [self createFrameWithFramesetter:framesetter config:config height:textHeight];
    
    CoreTextData *data = [[CoreTextData alloc] init];
    data.ctFrame = frame;
    data.height = textHeight;
    CFRelease(frame);
    CFRelease(framesetter);
    
    return data;
}

+ (NSDictionary *)attributedWithConfig:(CTFrameParserConfig *)config {
    CGFloat fontSize = config.fontSize;
    CTFontRef fontRef = CTFontCreateWithName((CFStringRef)@"ArialMT", fontSize, NULL);
    CGFloat lineSpace = config.lineSpace;
    const CFIndex kNumberOfSettings = 3;
    CTParagraphStyleSetting theSettings[kNumberOfSettings] = {
        {kCTParagraphStyleSpecifierLineSpacingAdjustment, sizeof(CGFloat), &lineSpace},
        {kCTParagraphStyleSpecifierMaximumLineSpacing, sizeof(CGFloat), &lineSpace},
        {kCTParagraphStyleSpecifierMinimumLineSpacing, sizeof(CGFloat), &lineSpace}
    };
    
    CTParagraphStyleRef paraghtStyleRef = CTParagraphStyleCreate(theSettings, kNumberOfSettings);
    UIColor *textColor = config.textColor;
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:(id)textColor.CGColor forKey:(id)kCTForegroundColorAttributeName];
    [dict setObject:(__bridge id)fontRef forKey:(id)kCTFontAttributeName];
    [dict setObject:(id)paraghtStyleRef forKey:(id)kCTParagraphStyleAttributeName];
    return dict;
}

+ (CTFrameRef)createFrameWithFramesetter:(CTFramesetterRef)framesetter
                            config:(CTFrameParserConfig *)config
                            height:(CGFloat)height {
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, CGRectMake(0, 0, config.width, height));
    
    CTFrameRef frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, 0), path, NULL);
    CFRelease(path);
    return frame;
}

@end
