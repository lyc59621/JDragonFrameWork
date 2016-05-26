//
//  JDTypeButtonPage.m
//  JDragonFrameWorkDemo
//
//  Created by JDragon on 16/5/26.
//  Copyright © 2016年 JDragon. All rights reserved.
//

#import "JDTypeButtonPage.h"

@interface JDTypeButtonPage ()<JDragonTypeButtonActionDelegate>

@end

@implementation JDTypeButtonPage

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUIConfig];
    // Do any additional setup after loading the view from its nib.
}
-(void)setUIConfig
{
    JDragonTypeButtonView  *btn = [[JDragonTypeButtonView alloc]initWithFrame:CGRectMake(0, 70, 300, 50)];
    
    [btn  setTypeButtonTitles:@[@"第一个",@"第二个",@"第三个"] withDownLableHeight:5 andDeleagte:self];
    
    [self.view addSubview:btn];
    
}
-(void)didClickTypeButtonAction:(UIButton *)button withIndex:(NSInteger)index
{
    
    NSLog(@"点了弟%ld",index);
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
