//
//  UIScrollView+JDragonHeadView.h
//  JDragonFrameWork
//
//  Created by long on 15/6/22.
//  Copyright (c) 2015年 姜锦龙. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIScrollView (JDragonHeadView)

@property (nonatomic, weak) UIView *topView;

- (void)addSpringHeadView:(UIView *)view;

@end
