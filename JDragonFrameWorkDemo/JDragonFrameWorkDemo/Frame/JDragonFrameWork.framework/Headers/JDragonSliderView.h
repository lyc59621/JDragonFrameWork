//
//  JDragonSliderView.h
//  JDragonFrameWork
//
//  Created by long on 15/6/22.
//  Copyright (c) 2015年 姜锦龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JDragonSliderView;

typedef enum{
    Vertical,
    Horizontal
} Orientation;

@protocol JDragonSliderViewDelegate <NSObject>

@optional

-(void)JDragonSliderValueChanged:(JDragonSliderView *)sender;
-(void)JDragonSliderValueChangeEnded:(JDragonSliderView *)sender;

@end

@interface JDragonSliderView : UIView

{
    BOOL isHandleHidden;
}

@property (nonatomic, strong) UIView *foregroundView;
@property (nonatomic, strong) UIView *handleView;
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, assign) float value;

@property (nonatomic, weak) id <JDragonSliderViewDelegate> delegate;

@property (nonatomic, assign) Orientation orientation;

-(void)setValue:(float)value withAnimation:(bool)isAnimate completion:(void (^)(BOOL finished))completion;
-(void)setColorsForBackground:(UIColor *)bCol foreground:(UIColor *)fCol handle:(UIColor *)hCol border:(UIColor *)brdrCol;
-(void)removeRoundCorners:(BOOL)corners removeBorder:(BOOL)border;
-(void)hideHandle;

-(id)initWithFrame:(CGRect)frame andOrientation:(Orientation)orientation;


@end
