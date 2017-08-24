//
//  LYNavigationController.m
//  LYFM
//
//  Created by 郑雪利 on 2017/8/16.
//  Copyright © 2017年 郑雪利. All rights reserved.
//

#import "LYNavigationController.h"

@interface LYNavigationController ()

@end

@implementation LYNavigationController

+ (void)initialize
{
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBackgroundImage:[UIImage imageNamed:@"navigationbar_bg_64"] forBarMetrics:UIBarMetricsDefault];
}
    
- (void)viewDidLoad {
    [super viewDidLoad];
    
}
    
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [super pushViewController:viewController animated:animated];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_back_n"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
}
    
- (void)back
{
    [self popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
