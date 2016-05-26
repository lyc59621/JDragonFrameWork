//
//  JDragonExpandingTextView.h
//  JDragonFrameWork
//
//  Created by long on 15/6/22.
//  Copyright (c) 2015年 姜锦龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (readwriteInputView)
@property (readwrite, retain) UIView *inputView;
@end

@class JDragonExpandingTextView;

@protocol UIExpandingTextViewDelegate

@optional
- (BOOL)expandingTextViewShouldBeginEditing:(JDragonExpandingTextView *)expandingTextView;
- (BOOL)expandingTextViewShouldEndEditing:(JDragonExpandingTextView *)expandingTextView;

- (void)expandingTextViewDidBeginEditing:(JDragonExpandingTextView *)expandingTextView;
- (void)expandingTextViewDidEndEditing:(JDragonExpandingTextView *)expandingTextView;

- (BOOL)expandingTextView:(JDragonExpandingTextView *)expandingTextView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text;
- (void)expandingTextViewDidChange:(JDragonExpandingTextView *)expandingTextView;

- (void)expandingTextView:(JDragonExpandingTextView *)expandingTextView willChangeHeight:(CGFloat)height;
- (void)expandingTextView:(JDragonExpandingTextView *)expandingTextView didChangeHeight:(CGFloat)height;

- (void)expandingTextViewDidChangeSelection:(JDragonExpandingTextView *)expandingTextView;
- (BOOL)expandingTextViewShouldReturn:(JDragonExpandingTextView *)expandingTextView;
@end


@interface JDragonExpandingTextView : UIView<UITextViewDelegate>


@property (weak,nonatomic) NSObject<UIExpandingTextViewDelegate> *delegate;
@property (nonatomic, strong) UITextView *internalTextView;
@property (nonatomic,strong) NSString *text;
@property (nonatomic,strong) UIFont *font;
@property (nonatomic,strong) UIColor *textColor;
#ifdef __IPHONE_6_0
@property (nonatomic) NSTextAlignment textAlignment;
#else
@property (nonatomic) UITextAlignment textAlignment;
#endif
@property (nonatomic) NSRange selectedRange;
@property (nonatomic,getter=isEditable) BOOL editable;
@property (nonatomic) UIDataDetectorTypes dataDetectorTypes __OSX_AVAILABLE_STARTING(__MAC_NA, __IPHONE_3_0);
@property (nonatomic) UIReturnKeyType returnKeyType;
@property (nonatomic, strong) UIImageView *textViewBackgroundImage;
@property (nonatomic,copy) NSString *placeholder;
@property (strong,nonatomic) UILabel *placeholderLabel;
@property NSInteger maximumNumberOfLines;
@property NSInteger minimumNumberOfLines;
@property CGFloat minimumHeight;
@property CGFloat maximumHeight;
@property NSInteger maxTextCount;
@property BOOL animateHeightChange;
@property BOOL forceSizeUpdate;
@property (readwrite, nonatomic) UIView *inputView;

- (BOOL)hasText;
- (void)scrollRangeToVisible:(NSRange)range;
- (void)clearText;


+(void)setTextCharacterSpacing:(NSMutableAttributedString*)str withSpace:(float)space;

@end
