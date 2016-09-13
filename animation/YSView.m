//
//  YSView.m
//  animation
//
//  Created by chenfenglong on 16/9/13.
//  Copyright © 2016年 chenfenglong. All rights reserved.
//

#import "YSView.h"

@implementation YSView

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    CGFloat width = self.frame.size.width;
    CGFloat hegith = self.frame.size.height;
    CGRect newRect = CGRectMake((width - 100) / 2, (hegith - 100) / 2, 100, 100);
    
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ref, newRect);
    CGContextSetLineWidth(ref, 3);
    CGContextSetStrokeColorWithColor(ref, [[UIColor greenColor] CGColor]);
    CGContextStrokePath(ref);
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor whiteColor];
        
        CGFloat width = self.frame.size.width;
        CGFloat hegith = self.frame.size.height;
        CGRect rect = CGRectMake((width - 100) / 2, (hegith - 100) / 2, 100, 100);
        CAKeyframeAnimation *keyFrame = [CAKeyframeAnimation animation];
        keyFrame.keyPath = @"position";
        keyFrame.path = CGPathCreateWithEllipseInRect(rect, NULL);
        keyFrame.calculationMode = kCAAnimationCubicPaced;
        keyFrame.rotationMode = kCAAnimationRotateAuto;
        keyFrame.duration = 2;
        keyFrame.autoreverses = NO;
        keyFrame.repeatCount = 1000;
        //keyFrame.repeatDuration = 0.1;
        
        
        CALayer *layer = [[CALayer alloc] init];
        layer.backgroundColor = [[UIColor redColor] CGColor];
        layer.bounds = CGRectMake(0, 0, 20, 20);
        [self.layer addSublayer:layer];
        
        [layer addAnimation:keyFrame forKey:@"frameKey"];
        
        

    }
    return self;
}
@end
