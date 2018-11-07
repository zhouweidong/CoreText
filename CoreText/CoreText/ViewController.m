//
//  ViewController.m
//  CoreText
//
//  Created by 周卫东 on 2018/7/31.
//  Copyright © 2018年 周卫东. All rights reserved.
//

#import "ViewController.h"
#import "CTFrameParserConfig.h"
#import "CoreTextData.h"
#import "CTFrameParser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CTFrameParserConfig *config = [[CTFrameParserConfig alloc] init];
    config.textColor = [UIColor redColor];
    config.width = self.ctView.width;
    
    CoreTextData *data = [CTFrameParser parseContent:@"按照以上原则，我们将‘CTDispalyView’中的内容拆分" config:config];
    self.ctView.data = data;
    self.ctView.height = data.height;
    self.ctView.backgroundColor = [UIColor yellowColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
