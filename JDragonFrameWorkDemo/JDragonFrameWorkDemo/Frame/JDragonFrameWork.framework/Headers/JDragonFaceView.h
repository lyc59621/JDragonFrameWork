//
//  JDragonFaceView.h
//  JDragonFrameWork
//
//  Created by long on 15/6/22.
//  Copyright (c) 2015年 姜锦龙. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol JDragonFaceViewDelegate <NSObject>

@optional
- (void)didSetScore:(NSInteger)score;

@end

@interface JDragonFaceView : UIView

@property(nonatomic,weak) id<JDragonFaceViewDelegate> delegate;

- (void)customInit;

-(void)setFaceViewSpaceWight:(float)space;

-(void)setDefaultImage:(UIImage*)defaultImage NOEnableImage:(UIImage*)NOEnableImage lowImg:(UIImage*)lowImage middleImage:(UIImage*)middleImage highImage:(UIImage*)highImage;

-(void)setImageViewFaceCount:(NSInteger)count andFaceUserEnabled:(BOOL)isEnabled;
@end
