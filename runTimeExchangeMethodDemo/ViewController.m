//
//  ViewController.m
//  runTimeExchangeMethodDemo
//
//  Created by kenen on 2017/3/23.
//  Copyright © 2017年 kenen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //若有图片456则显示,没有456图片则显示123
    UIImage *image = [UIImage imageNamed:@"456"];
//    UIImage *image = [UIImage imageNamed:@"789"];
    UIImageView *fastImageView = [[UIImageView alloc] init];
    fastImageView.image = image;
    fastImageView.frame = CGRectMake(0, 0, 100, 100);
    [self.view addSubview:fastImageView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
