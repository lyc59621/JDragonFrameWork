//
//  JDHeaderBtnPage.m
//  JDragonFrameWorkDemo
//
//  Created by JDragon on 16/5/26.
//  Copyright © 2016年 JDragon. All rights reserved.
//

#import "JDHeaderBtnPage.h"

@interface JDHeaderBtnPage ()

@end

@implementation JDHeaderBtnPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setUIconfig];
}

-(void)setUIconfig
{
    JDragonHeaderBtn  *btn = [JDragonHeaderBtn creatHeaderViewWithFrame:CGRectMake(0, 70, 300, 40)];
    [btn setHeaderArray:@[@"一",@"二",@"三",@"四",@"五"]];
    [btn setSelectedIndex:2];
    [self.view addSubview:btn];
    [btn setBackgroundColor:[UIColor redColor]];
    
    
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
