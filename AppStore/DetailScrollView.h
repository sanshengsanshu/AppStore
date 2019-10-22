//
//  DetailScrollView.h
//  AppStore
//
//  Created by Apple on 2019/10/22.
//  Copyright © 2019 wt. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailScrollView : UIScrollView

@property (nonatomic, strong) UIView *bgBackView;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UITextView *textView;

@end

NS_ASSUME_NONNULL_END
