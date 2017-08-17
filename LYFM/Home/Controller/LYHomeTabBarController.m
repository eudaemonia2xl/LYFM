//
//  LYHomeTabBarController.m
//  LYFM
//
//  Created by 郑雪利 on 2017/8/15.
//  Copyright © 2017年 郑雪利. All rights reserved.
//

#import "LYHomeTabBarController.h"
#import "LYNavigationController.h"
#import "LYTabBar.h"


@interface LYHomeTabBarController ()

@end

@implementation LYHomeTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LYTabBar *tabBar = [[LYTabBar alloc] init];
    [self setValue:tabBar forKeyPath:@"tabBar"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
