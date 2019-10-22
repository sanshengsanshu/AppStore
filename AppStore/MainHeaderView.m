//
//  MainHeaderView.m
//  AppStore
//
//  Created by Apple on 2019/10/22.
//  Copyright © 2019 wt. All rights reserved.
//

#import "MainHeaderView.h"

@implementation MainHeaderView

- (instancetype)init {
    if (self = [super init]) {
        [self setupUI];
    }
    return self;
}
- (void)setupUI {
    _dateLabel = [[UILabel alloc] init];
    _dateLabel.text = @"2019 10 12";
    _dateLabel.textColor = [UIColor grayColor];
    _dateLabel.font = [UIFont boldSystemFontOfSize:13];
    _dateLabel.frame = CGRectMake(20, 33, 200, 15);
    
    _mainLabel = [[UILabel alloc] init];
    _mainLabel.text = @"Today";
    _mainLabel.font = [UIFont boldSystemFontOfSize:34];
    _mainLabel.frame = CGRectMake(20, 48, 200, 40);
    
    _iconButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_iconButton setImage:[UIImage imageNamed:@"demo_icon"] forState:UIControlStateNormal];
    [_iconButton setImage:[UIImage imageNamed:@"demo_icon"] forState:UIControlStateHighlighted];
    _iconButton.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 20 - 40, 46, 35, 35);
    _iconButton.layer.cornerRadius = 17.5;
    _iconButton.layer.borderColor = [UIColor yellowColor].CGColor;
    _iconButton.layer.borderWidth = 0.8;
    [_iconButton addTarget:self action:@selector(tap_action:) forControlEvents:UIControlEventTouchUpInside];

    [self addSubview:_dateLabel];
    [self addSubview:_mainLabel];
    [self addSubview:_iconButton];

}
- (void)tap_action:(UIButton *)sender {
    
}

@end
