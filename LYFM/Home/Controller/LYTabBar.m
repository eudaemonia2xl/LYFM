//
//  LYTabBar.m
//  LYFM
//
//  Created by 郑雪利 on 2017/8/15.
//  Copyright © 2017年 郑雪利. All rights reserved.
//

#import "LYTabBar.h"
#import "LYConst.h"
#import "UIView+LYView.h"

@interface LYTabBar ()
//中间的加号按钮
@property (strong, nonatomic) UIView *plusBtnView;
@end
@implementation LYTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        UIView *plusBtnView = [[[NSBundle mainBundle] loadNibNamed:@"LYPlusButton" owner:nil options:nil] firstObject];
        [self addSubview:plusBtnView];
        _plusBtnView = plusBtnView;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat plusBtnViewW = 65;
    CGFloat plusBtnViewH = 65;
    CGFloat plusBtnViewX = (LYScreenW - plusBtnViewW) * 0.5;
    CGFloat plusBtnViewY = self.height - plusBtnViewH;

    _plusBtnView.frame = CGRectMake(plusBtnViewX, plusBtnViewY, plusBtnViewW, plusBtnViewH);

    NSInteger index = 0;
    CGFloat itemX = 0;
    CGFloat itemY = 10;
    CGFloat itemW = (LYScreenW - plusBtnViewW) * 0.25;
    CGFloat itemH = LYTabBarHeight;
    for (UIView *view in self.subviews) {
        if ([view isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            
            itemX = (index > 1) ? (itemX = plusBtnViewW + itemW * index) : (itemW * index);
//            if (index > 1) {
//                itemX = plusBtnViewW + itemW * index;
//            }else {
//                itemX = itemW * index;
//            }
            index++;
            
            view.frame = CGRectMake(itemX, itemY, itemW, itemH);

        }
    }
}

@end
