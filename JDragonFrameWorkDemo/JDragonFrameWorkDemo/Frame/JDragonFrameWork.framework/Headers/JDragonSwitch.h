//
//  JDragonSwitch.h
//  JDragonFrameWork
//
//  Created by long on 15/6/22.
//  Copyright (c) 2015年 姜锦龙. All rights reserved.
//

#import <UIKit/UIKit.h>


#pragma mark - Switch type
typedef enum {
    JDragonSwitchStyleLight,
    JDragonSwitchStyleDark,
    JDragonSwitchStyleDefault
} JDragonSwitchStyle;

#pragma mark - 开关状态
typedef enum {
    JDragonSwitchStateOn,
    JDragonSwitchStateOff
} JDragonSwitchState;

#pragma mark - 开关大小
typedef enum {
    JDragonSwitchSizeBig,
    JDragonSwitchSizeNormal,
    JDragonSwitchSizeSmall
} JDragonSwitchSize;


@protocol JDragonSwitchDelegate <NSObject>

- (void)switchStateChanged:(JDragonSwitchState)currentState;
@end

@interface JDragonSwitch : UIControl
#pragma mark - Properties
#pragma Delegate
@property (nonatomic, assign) id<JDragonSwitchDelegate> delegate;

#pragma State

@property (nonatomic) BOOL isOn;

@property (nonatomic) BOOL isEnabled;

@property (nonatomic) BOOL isBounceEnabled;

@property (nonatomic) BOOL isRippleEnabled;

#pragma Colour

@property (nonatomic, strong) UIColor *thumbOnTintColor;

@property (nonatomic, strong) UIColor *thumbOffTintColor;

@property (nonatomic, strong) UIColor *trackOnTintColor;

@property (nonatomic, strong) UIColor *trackOffTintColor;

@property (nonatomic, strong) UIColor *thumbDisabledTintColor;

@property (nonatomic, strong) UIColor *trackDisabledTintColor;

@property (nonatomic, strong) UIColor *rippleFillColor;

#pragma UI components

@property (nonatomic, strong) UIButton *switchThumb;

@property (nonatomic, strong) UIView *track;

#pragma mark - Initializer

- (id)init;



- (id)initWithSize:(JDragonSwitchSize)size state:(JDragonSwitchState)state;


- (id)initWithSize:(JDragonSwitchSize)size style:(JDragonSwitchStyle)style state:(JDragonSwitchState)state;

#pragma setter/getter

/**
 *  获取Switch 状态
 *
 *  @return <#return value description#>
 */
- (BOOL)getSwitchState;

/**
 *  设置开关状态
 *
 *  @param on       <#on description#>
 *  @param animated <#animated description#>
 */
- (void)setOn:(BOOL)on animated:(BOOL)animated;
- (void)changeThumbState;
@end
