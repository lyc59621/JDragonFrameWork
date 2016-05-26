//
//  JDragonHeaderBtn.h
//  JDragonFrameWork
//
//  Created by long on 15/6/22.
//  Copyright (c) 2015年 姜锦龙. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JDragonHeaderBtn;

@protocol JDHeaderViewDelegate <NSObject>

- (void) headerView: (JDragonHeaderBtn*)header selectedIndexChanged: (NSUInteger) index;

@end
@interface JDragonHeaderBtn : UIScrollView
@property (nonatomic, weak) NSArray * sectionArray;
@property (nonatomic) NSUInteger selectedIndex;

@property (nonatomic, weak) id<JDHeaderViewDelegate> delegates;
@property (nonatomic,strong)NSArray * headerArray;

+ (id)creatHeaderViewWithFrame:(CGRect)frame;
- (void) setSelectedIndexAnimated:(NSUInteger)selectedIndex;
- (void)setBtnTitle:(NSString*)title withIndex:(NSInteger)index;

@end
