//
//  JDSwitchPage.m
//  JDragonFrameWorkDemo
//
//  Created by JDragon on 16/5/26.
//  Copyright © 2016年 JDragon. All rights reserved.
//

#import "JDSwitchPage.h"

@interface JDSwitchPage ()<JDragonSwitchDelegate>

@end

@implementation JDSwitchPage

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUIConfig];
    // Do any additional setup after loading the view from its nib.
}
-(void)setUIConfig
{
  
    JDragonSwitch  *sw = [[JDragonSwitch alloc]initWithFrame:CGRectMake(20, 100, 40, 30)];
    
    sw.delegate = self;
    [self.view addSubview:sw];
    
    
}
-(void)switchStateChanged:(JDragonSwitchState)currentState
{
    
    NSLog(@"状态＝＝＝%u",currentState);
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
