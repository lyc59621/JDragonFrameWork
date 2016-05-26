//
//  JDBannerPage.m
//  JDragonFrameWorkDemo
//
//  Created by JDragon on 16/5/26.
//  Copyright © 2016年 JDragon. All rights reserved.
//

#import "JDBannerPage.h"

@interface JDBannerPage ()

@end

@implementation JDBannerPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"path = %@",NSHomeDirectory());
    
    [self localImageLoaded];
    [self remoteImageLoaded];
    // Do any additional setup after loading the view, typically from a nib.
}

/**
 *  本地加载图片
 */
- (void)localImageLoaded {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i = 1; i < 5; i++) {
        [array addObject:[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]]];
    };
    JDBannerView *banner = [[JDBannerView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height-250, self.view.bounds.size.width, 250) imageNames:array clickCompliment:^(NSInteger index) {
        NSLog(@"index = %ld",index);
    }];
    [banner setPageType:PageControlPositionDownRight];
    [banner setCurrentPageIndicatorTintColor:[UIColor blackColor]];
    [banner setAutoBanner:NO];
    [self.view addSubview:banner];
}
/**
 *  网络获取图片
 */
- (void)remoteImageLoaded{
    
    
    NSString *urlStr1 = @"http://img10.3lian.com/sc6/show02/67/27/02.jpg";
    NSString *urlStr2 = @"http://img161.poco.cn/mypoco/myphoto/20100424/19/53310080201004241856521800459127582_005.jpg";
    NSString *urlStr3 = @"http://img4.duitang.com/uploads/item/201408/30/20140830185433_FnJLA.jpeg";
    NSString *urlStr4 = @"http://tupian.enterdesk.com/2013/xll/012/26/3/1.jpg";
    JDBannerView  *banner = [[JDBannerView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 250) urls:@[urlStr1,urlStr2,urlStr3,urlStr4] clickCompliment:^(NSInteger index) {
        
    }];
    [banner setPageType:PageControlPositionDownCenter];
    [banner setPageImageStr:@"40-10默认"];
    [banner setPageCurrentImageStr:@"40-10选中"];
    [self.view addSubview:banner];;
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
