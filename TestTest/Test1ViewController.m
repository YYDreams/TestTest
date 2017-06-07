//
//  Test1ViewController.m
//  TestTest
//
//  Created by 花花 on 2017/6/7.
//  Copyright © 2017年 花花. All rights reserved.
//

#import "Test1ViewController.h"

@interface Test1ViewController ()

@end

@implementation Test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
//    btnW = （screen_width - 边距- 中间间隙)/2
    
    CGFloat btnW = ([UIScreen mainScreen].bounds.size.width - 30 - 6) / 2;
    CGFloat btnH = 66;
    
    for (int i = 0; i < 4; i++) {
        UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(15+i%2*(btnW+6), 6+(6+btnH)*(i/2), btnW, btnH)];
        [btn setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"home_func_%i",i+1]] forState:UIControlStateNormal];
        btn.tag = i;
        [btn addTarget:self action:@selector(btnOnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}

- (void)btnOnClick:(UIButton *)btn{

    NSLog(@"%lx",btn.tag);
    

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
