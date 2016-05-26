//
//  JDragonCustom.h
//  JDragonFrameWork
//
//  Created by long on 15/6/22.
//  Copyright (c) 2015年 姜锦龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface JDragonCustom : NSObject

//创建label
+ (UILabel *)creatLabelWithFrame:(CGRect)frame
                            text:(NSString *)text
                       alignment:(NSTextAlignment)textAlignment;

+ (UILabel *)creatLabelWithFrame:(CGRect)frame
                            text:(NSString *)text
                            font:(UIFont *)font
                       textColor:(UIColor *)color
                       alignment:(NSTextAlignment)textAlignment;

//创建带标题的button
+ (UIButton *)creatButtonFrame:(CGRect)frame
                         title:(NSString *)string
                        target:(id)target
                        action:(SEL)sel
                           tag:(NSInteger)tag;

//创建图片类型的button
+ (UIButton *)creatButtonFrame:(CGRect)frame
                     imageName:(NSString *)imageName
               selectImageNmae:(NSString *)selectImageName
                        target:(id)target
                        action:(SEL)sel
                           tag:(NSInteger)tag;

+ (UIButton *)creatButtonFrame:(CGRect)frame
                   bgImageName:(NSString *)imageName
             bgSelectImageNmae:(NSString *)selectImageName
                        target:(id)target
                        action:(SEL)sel
                           tag:(NSInteger)tag;

//创建textField
+ (UITextField *)creatTextFieldWithFrame:(CGRect)frame
                                  secure:(BOOL)isSecure
                                   place:(NSString *)string
                                     tag:(NSInteger)tag
                                delegate:(id<UITextFieldDelegate>)delegate;

//创建textView
+ (UITextView *)creatTextViewWithFrame:(CGRect)frame
                                   tag:(NSInteger)tag
                              delegate:(id<UITextViewDelegate>)delegate;

//创建一个ImageView
+ (UIImageView *)creatImageViewWithFrame:(CGRect)frame
                               imageName:(NSString *)imageName;

#pragma mark - 添加层
+ (void)addViewLayeView:(UIView *)view
                 border:(CGFloat)border
                 corner:(NSInteger)corner;

+ (void)addViewLayeView:(UIView *)view
                  color:(UIColor *)color
                 border:(CGFloat)border
                 corner:(CGFloat)corner;

+ (void)addViewCustomLayer:(UIView *)view;

#pragma mark - 旋转动画
+ (UIImageView *)rotate360DegreeWithImageView:(UIImageView *)imageView;

#pragma mark - 停止旋转
+ (void)imageStopTransform:(UIImageView *)imageView;

//创建一个警告框AlertView
+ (UIAlertView *)showAlertViewTitle:(NSString *)title message:(NSString *)message delegate:(id<UIAlertViewDelegate>)delegate;

//创建一个带button的AlertView
+ (UIAlertView *)showButtonAlertViewTitle:(NSString *)title message:(NSString *)message delegate:(id<UIAlertViewDelegate>)delegate;

#pragma mark - 错误提示
+ (void)showAlertViewWithErrCode:(NSInteger)err_Code;

+(UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;


#pragma mark -------------------------时间转换 -------------------------------------
/**
 *  时间戳转时间 2015-12-12 格式
 *
 *  @param ts 传入时间戳
 *
 *  @return 返回2015-12-12 格式字符
 */
+ (NSString *)timeFormatterFromTs:(NSString *)ts;

/**
 * 时间戳转时间 2015年12月12日 12:12
 *
 *  @param ts 传入时间戳
 *
 *  @return 返回2015年12月12日 12:12
 */
+ (NSString *)timeFormatterMonthAndDateFromTs:(NSString *)ts;
/**
 *  时间戳转时间 HH:mm
 *
 *  @param ts
 *
 *  @return 返回HH:mm 格式字符
 */
+ (NSString *)timeHourMinuteFormatterFromTs:(NSString *)ts;

//字符串转时间戳
+ (NSString*)timeFormatterFromString:(NSString *)time;

/**
 *  时间戳对比
 *
 *  @param time <#time description#>
 *
 *  @return <#return value description#>
 */
+(NSInteger)isCurrentTimeOutFromString:(NSString*)time;
@end
