//
//  UIView+cutRound.m
//  Crowdfunding
//
//  Created by 任敬 on 2017/12/18.
//  Copyright © 2017年 任敬. All rights reserved.
//

#import "UIView+cutRound.h"

@implementation UIView (cutRound)

// 切圆角
- (void)cutRoundWithRadius:(CGFloat)radius{
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)];
    shapeLayer.path = path.CGPath;
    self.layer.mask = shapeLayer;
}

- (void)cutRoundWithRadius:(CGFloat)radius byRoundingCorners:(UIRectCorner)corners{
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(radius, radius)];
    shapeLayer.path = path.CGPath;
    self.layer.mask = shapeLayer;
}

@end
