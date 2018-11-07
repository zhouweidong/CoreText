//
//  CTFrameParser.h
//  CoreText
//
//  Created by 周卫东 on 2018/8/1.
//  Copyright © 2018年 周卫东. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreTextData.h"
#import "CTFrameParserConfig.h"

@interface CTFrameParser : NSObject

+ (CoreTextData *)parseContent:(NSString *)contnet config:(CTFrameParserConfig *)config;

@end

