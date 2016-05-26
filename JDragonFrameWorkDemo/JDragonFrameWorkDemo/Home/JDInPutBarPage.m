//
//  JDInPutBarPage.m
//  JDragonFrameWorkDemo
//
//  Created by JDragon on 16/5/26.
//  Copyright © 2016年 JDragon. All rights reserved.
//

#import "JDInPutBarPage.h"

@interface JDInPutBarPage ()<JDragonInputBarDelegate>

@end

@implementation JDInPutBarPage

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUIConfig];
    // Do any additional setup after loading the view from its nib.
}
-(void)setUIConfig
{
  
    JDragonInPutBar *input = [[JDragonInPutBar  alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-100, self.view.bounds.size.width, 45)];
    
    input.delegate = self;
    input.clearInputWhenSend = true;
    input.resignFirstResponderWhenSend = true;
    input.textField.placeholder = @"回复:";
    input.textField.returnKeyType = UIReturnKeyDefault;
    [self.view addSubview:input];
    self.view.backgroundColor = [UIColor grayColor];
    
}
-(void)inputBar:(JDragonInPutBar *)inputBar sendBtnPress:(UIButton *)sendBtn withInputString:(NSString *)str
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
