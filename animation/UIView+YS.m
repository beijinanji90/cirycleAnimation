//
//  UIView+YS.m
//  animation
//
//  Created by chenfenglong on 16/9/13.
//  Copyright © 2016年 chenfenglong. All rights reserved.
//

#import "UIView+YS.h"
#import <objc/runtime.h>

@interface UIView ()

@end

@implementation UIView (YS)

@dynamic categoryName;


- (void)setCategoryName:(NSString *)categoryName
{
    objc_setAssociatedObject(self, @"_categoryName", categoryName, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)categoryName
{
    return objc_getAssociatedObject(self, @"_categoryName");
}


@end
