//
//  JDragonInPutBar.h
//  JDragonFrameWork
//
//  Created by long on 15/6/22.
//  Copyright (c) 2015年 姜锦龙. All rights reserved.
//

#import <UIKit/UIKit.h>


@class JDragonInPutBar;
@class HPGrowingTextView;
@protocol JDragonInputBarDelegate <NSObject>

-(void)inputBar:(JDragonInPutBar*)inputBar sendBtnPress:(UIButton*)sendBtn withInputString:(NSString*)str;

@optional

-(void)isBegainEdit:(BOOL)isBegain;

@end
@interface JDragonInPutBar : UIView

//代理 用于传递btn事件
@property(assign,nonatomic)id<JDragonInputBarDelegate> delegate;
//这两个可以自己付值
@property(strong,nonatomic)HPGrowingTextView *textField;
@property(strong,nonatomic)UIButton *sendBtn;

//点击btn时候 清空textfield  默认NO
@property(assign,nonatomic)BOOL clearInputWhenSend;
//点击btn时候 隐藏键盘  默认NO
@property(assign,nonatomic)BOOL resignFirstResponderWhenSend;

//初始frame
@property(assign,nonatomic)CGRect originalFrame;

@property(assign,nonatomic) BOOL isShow;

//隐藏键盘
-(BOOL)resignFirstResponder;

-(void)showInputViewWith:(UIViewController*)vc;

-(void)hideInputView;

@end
