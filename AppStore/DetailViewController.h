//
//  DetailViewController.h
//  AppStore
//
//  Created by Apple on 2019/10/22.
//  Copyright © 2019 wt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailScrollView.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController
@property (nonatomic, strong) DetailScrollView *scrollView;
@property (nonatomic, strong) UIButton *closeBtn;

@end

NS_ASSUME_NONNULL_END
