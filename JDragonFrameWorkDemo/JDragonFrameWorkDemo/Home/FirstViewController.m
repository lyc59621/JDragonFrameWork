//
//  FirstViewController.m
//  JDragonFrameWorkDemo
//
//  Created by JDragon on 16/5/26.
//  Copyright © 2016年 JDragon. All rights reserved.
//

#import "FirstViewController.h"
#import "JDBannerPage.h"
#import "JDCustompage.h"
#import "JDHeaderBtnPage.h"
#import "JDTypeButtonPage.h"
#import "JDWindowContentPage.h"
#import "JDSwitchPage.h"
#import "JDInPutBarPage.h"
#import "JDAlertViewPage.h"
#import "JDStarViewPage.h"
#import "JDFaceViewPage.h"
#import "JDSliderViewPage.h"
#import "JDExpandingTextViewPage.h"

@interface FirstViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) NSArray  *arr;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.arr = @[@"JDBannerView",
                 @"JDragonCustom",
                 @"JDragonHeaderBtn",
                 @"JDragonTypeButtonView",
                 @"JDragonWindowContentView",
                 @"JDragonSwitch",
                 @"JDragonInPutBar",
                 @"JDragonAlertView",
                 @"JDragonStarView",
                 @"JDragonFaceView",
                 @"JDragonSliderView",
                 @"JDragonExpandingTextView"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.arr.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:@"oneCell" forIndexPath:indexPath];
    cell.textLabel.text = self.arr[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    

    switch (indexPath.row) {
        case 0:
        {
            
            JDBannerPage  *Page = [[JDBannerPage alloc]initWithNibName:@"JDBannerPage" bundle:[NSBundle mainBundle]];
            [self.navigationController pushViewController:Page animated:true];
        }
            break;
        case 1:
        {
            
            JDCustompage  *Page = [[JDCustompage alloc]initWithNibName:@"JDCustompage" bundle:[NSBundle mainBundle]];
            [self.navigationController pushViewController:Page animated:true];
        }
            break;
        case 2:
        {
            
           JDHeaderBtnPage   *Page = [[JDHeaderBtnPage alloc]initWithNibName:@"JDHeaderBtnPage" bundle:[NSBundle mainBundle]];
            [self.navigationController pushViewController:Page animated:true];
        }
            break;
        case 3:
        {
            
            JDTypeButtonPage   *Page = [[JDTypeButtonPage alloc]initWithNibName:@"JDTypeButtonPage" bundle:[NSBundle mainBundle]];
            [self.navigationController pushViewController:Page animated:true];
        }
            break;
        case 4:  
        {
            
            JDWindowContentPage   *Page = [[JDWindowContentPage alloc]initWithNibName:@"JDWindowContentPage" bundle:[NSBundle mainBundle]];
            [self.navigationController pushViewController:Page animated:true];
        }
            break;
        case 5:
        {
            
            JDSwitchPage   *Page = [[JDSwitchPage alloc]initWithNibName:@"JDSwitchPage" bundle:[NSBundle mainBundle]];
            [self.navigationController pushViewController:Page animated:true];
        }
            break;
        case 6:
        {
            
            JDInPutBarPage   *Page = [[JDInPutBarPage alloc]initWithNibName:@"JDInPutBarPage" bundle:[NSBundle mainBundle]];
            [self.navigationController pushViewController:Page animated:true];
        }
            break;
        case 7:
        {
            
            JDAlertViewPage   *Page = [[JDAlertViewPage alloc]initWithNibName:@"JDAlertViewPage" bundle:[NSBundle mainBundle]];
            [self.navigationController pushViewController:Page animated:true];
        }
            break;
        case 8:
        {
            
            JDStarViewPage   *Page = [[JDStarViewPage alloc]initWithNibName:@"JDStarViewPage" bundle:[NSBundle mainBundle]];
            [self.navigationController pushViewController:Page animated:true];
        }
            break;
        case 9:
        {
            
            JDFaceViewPage   *Page = [[JDFaceViewPage alloc]initWithNibName:@"JDFaceViewPage" bundle:[NSBundle mainBundle]];
            [self.navigationController pushViewController:Page animated:true];
        }
            break;
        case 10:
        {
             JDSliderViewPage   *Page = [[JDSliderViewPage alloc]initWithNibName:@"JDSliderViewPage" bundle:[NSBundle mainBundle]];
            [self.navigationController pushViewController:Page animated:true];
           
        }
            break;
        case 11:
        {
            
            
        }
            break;
        default:
            break;
    }
    
    
    
    
    
}

@end
