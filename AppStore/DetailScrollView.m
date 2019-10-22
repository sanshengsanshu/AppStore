//
//  DetailScrollView.m
//  AppStore
//
//  Created by Apple on 2019/10/22.
//  Copyright © 2019 wt. All rights reserved.
//

#import "DetailScrollView.h"

@implementation DetailScrollView

- (instancetype)init {
    if (self = [super init]) {
        [self setupUI];
    }
    return self;
}
- (void)setupUI {
    _bgBackView = [[UIView alloc] init];
    _bgBackView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 500);
    _bgBackView.layer.masksToBounds = YES;

    _imageView = [[UIImageView alloc] init];
    _imageView.frame = _bgBackView.bounds;
    _imageView.userInteractionEnabled = YES;
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    NSString *str = @"Thank you. I'm honored to be with you today for your commencement from one of the finest universities in the world. Truth be told, i never graduated from college and this is the closest I've ever gotten to a college gradution. \n\nToday i want to tell you three stories from my life. That's it. No big deal. Just three stories. The first story is about connecting the dots. \n\ndropped out of Reed College after the first 6 months, but then stayed around as a drop-in for another 18 months or so before I really quit. So why did I drop out? \n\nIt started before I was born. My biological mother was a young,unwed college graduate student, and she decided to put me up for adoption. She felt very strongly that I should be adopted by college graduates, so everything was all set for me to be adopted at birth by a lawyer and his wife. Except that when I popped out they decided at the last minute that they really wanted a girl. So my parents, who were on a waiting list, got a call in the middle of the night asking: 'We got an unexpected baby boy; do you want him?' They said: 'Of course.' My biological mother found out later that my mother had never graduated from college and  my father had never graduated from high school. She refused to sign the final adoption papers. She only relented a few months later when my parents promised that I would  go to college.";
    _textView = [[UITextView alloc] init];
    CGFloat textHeight = [str boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 2 * 20, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:15]} context:nil].size.height;
    _textView.frame = CGRectMake(20, _bgBackView.frame.size.height + 40, [UIScreen mainScreen].bounds.size.width - 2 * 20, textHeight + 50);
    _textView.text = str;
    _textView.font = [UIFont boldSystemFontOfSize:15];
    _textView.textColor = [UIColor grayColor];
    
    [self addSubview:_bgBackView];
    [self addSubview:_textView];
    [_bgBackView addSubview:_imageView];
        
    self.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, _bgBackView.frame.size.height + 40 + _textView.frame.size.height + 50);
}

@end
