//
//  DetailViewController.m
//  AppStore
//
//  Created by Apple on 2019/10/22.
//  Copyright © 2019 wt. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (nonatomic, strong) UIPanGestureRecognizer *dismissPanGesture;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}
- (void)closeAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)handleDismissPan:(UIPanGestureRecognizer *)gesture {
    
}
- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.scrollView];
    [self.view addSubview:self.closeBtn];
    [self.view addGestureRecognizer:self.dismissPanGesture];
}
- (UIButton *)closeBtn {
    if (!_closeBtn) {
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width- 20 - 30, 20, 30, 30);
        [_closeBtn setImage:[UIImage imageNamed:@"close_button"] forState:UIControlStateNormal];
        [_closeBtn addTarget:self action:@selector(closeAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _closeBtn;
}
- (UIPanGestureRecognizer *)dismissPanGesture {
    if (!_dismissPanGesture) {
        _dismissPanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handleDismissPan:)];
        _dismissPanGesture.maximumNumberOfTouches = 1;
    }
    return _dismissPanGesture;
}
- (DetailScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[DetailScrollView alloc] init];
        _scrollView.frame = self.view.bounds;
        _scrollView.delegate = self;
    }
    return _scrollView;
}

@end


