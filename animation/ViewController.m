//
//  ViewController.m
//  animation
//
//  Created by chenfenglong on 16/9/13.
//  Copyright © 2016年 chenfenglong. All rights reserved.
//

#import "ViewController.h"
#import "YSView.h"
#import "YSProtocol.h"
#import "UIView+YS.h"

@interface ViewController ()<YSProtocol>

@end

@implementation ViewController

@synthesize name = _name;
@synthesize age = _age;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.name = @"abc";
    self.age = 34;
    NSLog(@"name == %@;age == %d",self.name,self.age);
    
    YSView *view = [[YSView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:view];

    
    view.categoryName = @"chenfenglong";
    NSLog(@"%@",view.categoryName);
}


- (void)setName:(NSString *)name
{
    //_name = name;
    NSLog(@"%@",name);
}



@end
