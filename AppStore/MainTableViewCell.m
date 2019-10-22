//
//  MainTableViewCell.m
//  AppStore
//
//  Created by Apple on 2019/10/22.
//  Copyright © 2019 wt. All rights reserved.
//

#import "MainTableViewCell.h"

@implementation MainTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}
- (void)setupUI {
    _bgBackView = [[UIView alloc] init];
    _bgBackView.frame = CGRectMake(20, 0, [UIScreen mainScreen].bounds.size.width - 2 * 20, 410);
    _bgBackView.layer.shadowColor = [UIColor blackColor].CGColor;
    _bgBackView.layer.shadowOpacity = 0.4;
    _bgBackView.layer.shadowOffset = CGSizeMake(0, 1);
    [self.contentView addSubview:_bgBackView];
    
    _emptyView = [[UIView alloc] init];
    _emptyView.frame = CGRectMake(20, _bgBackView.frame.size.height, [UIScreen mainScreen].bounds.size.width - 2 * 20, 30);
    _emptyView.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0];
    [self.contentView addSubview:_emptyView];
    
    _bgImageView = [[UIImageView alloc] init];
    _bgImageView.frame = _bgBackView.bounds;
    _bgImageView.contentMode = UIViewContentModeScaleAspectFill;
    _bgImageView.layer.cornerRadius = 15.0;
    _bgImageView.layer.masksToBounds = YES;
    [_bgBackView addSubview:_bgImageView];
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
