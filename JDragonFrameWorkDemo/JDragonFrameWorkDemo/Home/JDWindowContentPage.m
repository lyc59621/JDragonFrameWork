//
//  JDWindowContentPage.m
//  JDragonFrameWorkDemo
//
//  Created by JDragon on 16/5/26.
//  Copyright © 2016年 JDragon. All rights reserved.
//

#import "JDWindowContentPage.h"

@interface JDWindowContentPage ()
@property(nonatomic,strong)JDragonWindowContentView  *content;
@end

@implementation JDWindowContentPage

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUIConfig];
    // Do any additional setup after loading the view from its nib.
}
-(void)setUIConfig
{
  
    UIButton  *btn = [JDragonCustom creatButtonFrame:CGRectMake(0, 100, 50, 30) title:@"点我" target:self action:@selector(btnAction) tag:3];
    [self.view addSubview:btn];

}
-(void)btnAction
{
    self.content= [[JDragonWindowContentView alloc ]initWithFrame:self.view.bounds];
    self.content.backgroundColor = [UIColor grayColor];
    UIView  *a = [[UIView alloc]initWithFrame:CGRectMake(0, 300, 200, 200)];
    a.backgroundColor = [UIColor redColor];
    self.content.customView = a;
    [self.content showInView:[UIApplication sharedApplication].keyWindow animated:true direction:2];
    
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
