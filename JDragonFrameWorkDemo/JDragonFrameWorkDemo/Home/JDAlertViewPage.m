//
//  JDAlertViewPage.m
//  JDragonFrameWorkDemo
//
//  Created by JDragon on 16/5/26.
//  Copyright © 2016年 JDragon. All rights reserved.
//

#import "JDAlertViewPage.h"

@interface JDAlertViewPage ()

@end

@implementation JDAlertViewPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setUIConfig];

}
-(void)setUIConfig
{
    
    
}
- (IBAction)btnAction:(UIButton *)sender {
    
    switch (sender.tag) {
        case 101:
            
            [JDragonAlertView alertWithTitle:@"提示" message:@"你中奖了" cancelButtonWithTitle:@"取消" cancelBlock:^{
                
            } confirmButtonWithTitle:@"确定" confrimBlock:^{
                
            }];
            break;
        case 102:
            
            [JDragonAlertView alertPlainTextWithTitle:@"提示" message:@"你中奖了" cancelButtonWithTitle:@"取消" cancelBlock:^{
                
            } confirmButtonWithTitle:@"确定" confrimBlock:^(NSString *plainText) {
                
            }];
            
            break;
        case 103:
            
            [JDragonAlertView alertCustomPlainTextWithTitle:@"提示" message:@"你中奖了" placeHold:@"请输入密码" buttonTitle:@"账号" target:self action:@selector(actionnnnn) cancelButtonWithTitle:@"取消" cancelBlock:^{
                
            } confirmButtonWithTitle:@"确定" confrimBlock:^(NSString *plainText) {
                
            }];
            
            break;
        default:
            break;
    }
    
    
}

-(void)actionnnnn
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
