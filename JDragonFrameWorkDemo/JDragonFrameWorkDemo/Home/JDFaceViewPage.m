//
//  JDFaceViewPage.m
//  JDragonFrameWorkDemo
//
//  Created by JDragon on 16/5/26.
//  Copyright © 2016年 JDragon. All rights reserved.
//

#import "JDFaceViewPage.h"

@interface JDFaceViewPage ()<JDragonFaceViewDelegate>

@end

@implementation JDFaceViewPage

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUIConfig];
    
}
-(void)setUIConfig
{
    
    JDragonFaceView  *face = [[JDragonFaceView  alloc]initWithFrame:CGRectMake(0, 100, 200, 30)];
    
    [face setDefaultImage:[UIImage imageNamed:@"default大"]  NOEnableImage:[UIImage imageNamed:@"default大-不可点"] lowImg:[UIImage imageNamed:@"low大"]  middleImage:[UIImage imageNamed:@"middle大"]  highImage:[UIImage imageNamed:@"high大"]];
    
    [face setDelegate:self];
    [self.view addSubview:face];
    
    
    
}
-(void)didSetScore:(NSInteger)score
{
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
