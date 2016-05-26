//
//  JDragonLabel.h
//  JDragonFrameWork
//
//  Created by long on 15/6/22.
//  Copyright (c) 2015年 姜锦龙. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <Foundation/Foundation.h>

@interface JDragonLabel : UILabel
{
@private
CGFloat characterSpacing_;       //字间距
long    linesSpacing_;           //行间距
CGFloat paragraphSpacing;        //段间距
}

@property(nonatomic,assign) CGFloat characterSpacing;
@property(nonatomic,assign) CGFloat paragraphSpacing;
@property(nonatomic,assign) long    linesSpacing;
//@property(nonatomic,strong) UIColor* backgroundColors;

/*
 *绘制前获取label高度
 */
- (int)JDragonGetAttributedStringHeightWidthValue:(int)width;
@end
