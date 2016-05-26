//
//  JDragonWindowContentView.h
//  JDragonFrameWork
//
//  Created by long on 15/6/22.
//  Copyright (c) 2015年 姜锦龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JDragonWindowContentView : UIView

{
    //    UIView *backgroundView;
    int direction;
}

@property(nonatomic,strong) UIView *backgroundView;
@property(nonatomic,retain)NSArray *menuItems;
@property(nonatomic,assign) BOOL isOpen;
@property (nonatomic,strong) UIView *customView;

-(void)showInView:(UIView*)mother  animated:(BOOL)animated direction:(int)up1_left3;
-(void)dissMiss;
@end
