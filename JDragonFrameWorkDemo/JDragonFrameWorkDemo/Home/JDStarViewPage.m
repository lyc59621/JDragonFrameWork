//
//  JDStarViewPage.m
//  JDragonFrameWorkDemo
//
//  Created by JDragon on 16/5/26.
//  Copyright © 2016年 JDragon. All rights reserved.
//

#import "JDStarViewPage.h"

@interface JDStarViewPage ()

@end

@implementation JDStarViewPage

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUIConfig];
    
}
-(void)setUIConfig
{
  
    
    JDragonStarView  *star = [[JDragonStarView alloc ]initWithFrame:CGRectMake(0, 100, 200, 30)];
    
    [star rsetNromalImage:[UIImage imageNamed:@"星级大-默认"] halfImage:[UIImage imageNamed:@"星级大-半"] selectImage:[UIImage imageNamed:@"星级大-选中"]];
    
    [star setBackgroundColor:[UIColor grayColor]];
    [star setStarCountWith:3 andUserEnabled:true ];
    
    
    [self.view addSubview:star];
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
