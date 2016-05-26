//
//  JDCustompage.m
//  JDragonFrameWorkDemo
//
//  Created by JDragon on 16/5/26.
//  Copyright © 2016年 JDragon. All rights reserved.
//

#import "JDCustompage.h"


#import <JDragonFrameWork/JDragonCustom.h>
@interface JDCustompage ()

@end

@implementation JDCustompage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setUIconfig];
}

-(void)setUIconfig
{
    
    UILabel  *lab = [JDragonCustom creatLabelWithFrame:CGRectMake(0, 70, self.view.bounds.size.width, 30) text:@"我来巨左" font:[UIFont systemFontOfSize:12] textColor:[UIColor redColor] alignment:NSTextAlignmentLeft];
    
    UIButton  *btn = [JDragonCustom creatButtonFrame:CGRectMake(0, 100, 50, 30) title:@"点我" target:self action:@selector(btnAction) tag:3];
    
    UITextField  *filed = [JDragonCustom creatTextFieldWithFrame:CGRectMake(0, 140, 220, 30) secure:false place:@"请输入" tag:33 delegate:self];
    
    
    [JDragonCustom addViewLayeView:lab color:[UIColor yellowColor] border:6 corner:10];
    
    
    
    [self.view addSubview:lab];
    [self.view addSubview:btn];
    [self.view addSubview:filed];

}
-(void)btnAction
{
    
    [JDragonCustom showAlertViewTitle:@"提示了啊 " message:@"你还在不" delegate:self];
    
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
