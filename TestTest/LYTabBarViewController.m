
//
//  LYTabBarViewController.m
//  TestTest
//
//  Created by 花花 on 2017/6/7.
//  Copyright © 2017年 花花. All rights reserved.
//

#import "LYTabBarViewController.h"

@interface LYTabBarViewController ()

@end

@implementation LYTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setupAllChildControllers{
    
    //控制器的名字  @"LYGameViewController",
   NSArray  *ControllerViews = @[@"Test1ViewController",@"Test2ViewController",@"Test3ViewController"];
    //TabBar图片 @"tabbar_game_normal.png",
    NSArray  * normalImageNames = @[@"tabbar_home_normal.png",  @"tabbar_mall_normal.png", @"tabbar_mine_normal.png"];
    //TabBar选中的图片 @"tabbar_game_active.png",
    NSArray  *selectImageNames = @[@"tabbar_home_active.png", @"tabbar_mall_active.png", @"tabbar_mine_active.png"];
    
    //TabBarItem标题
    NSArray  *titles = @[@"首页",@"商城",@"我的"];
    
    //    }
    
    
    for (int i = 0; i< ControllerViews.count; i++)
    {
        //1.获取类名字符串
        NSString *className= ControllerViews[i];
        //2。获取类名
        Class class = NSClassFromString(className);
        //3.创建对象
        UIViewController *VC  = [class new];
        self.tabBar.tintColor  = [UIColor redColor];
        
        VC.title = titles[i];
        
        VC.tabBarItem.image = [[UIImage imageNamed:normalImageNames[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        VC.tabBarItem.selectedImage =  [[UIImage imageNamed:selectImageNames[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UINavigationController *Nav = [[UINavigationController alloc]initWithRootViewController:VC];
        Nav.navigationBar.translucent = NO; //设置
        
        [self addChildViewController:Nav];
        
    }
    //默认选中第一个
    self.selectedIndex = 0;
    
}
@end
