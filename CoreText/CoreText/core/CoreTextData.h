//
//  CoreTextData.h
//  CoreText
//
//  Created by 周卫东 on 2018/8/1.
//  Copyright © 2018年 周卫东. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreText/CoreText.h>

@interface CoreTextData : NSObject
@property(nonatomic, assign) CTFrameRef ctFrame;
@property(nonatomic, assign) CGFloat height;

@end
