//
//  ViewController.m
//  LDHAutoLayout
//
//  Created by lidonghan on 2018/4/13.
//  Copyright © 2018年 lidonghan. All rights reserved.
//

#import "ViewController.h"

#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *blueView = [[UIView alloc] init];

    blueView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:blueView];

    
    //只会添加约束
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.width.equalTo(@100);
//        make.height.equalTo(@100);
//        make.width.and.height.mas_equalTo(100);
//        make.height.mas_equalTo(200);
        make.right.equalTo(self.view.mas_right).offset(-20);
        make.bottom.equalTo(self.view.mas_bottom).offset(-20);
        make.left.mas_equalTo(self.view).offset(20);
        make.top.mas_equalTo(self.view).offset(20);
    }];
//    删除之前的约束，重新添加
//    [blueView mas_remakeConstraints:^(MASConstraintMaker *make) {
//        make.size.mas_equalTo(200);
//    }];
//    覆盖之前的某些特定约束
//    [blueView mas_updateConstraints:^(MASConstraintMaker *make) {
//        make.size.mas_equalTo(200);
//    }];
    
}


@end
