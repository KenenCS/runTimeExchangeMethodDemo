//
//  UIImage+Exchange.m
//  runTimeExchangeMethodDemo
//
//  Created by kenen on 2017/3/23.
//  Copyright © 2017年 kenen. All rights reserved.
//

#import "UIImage+Exchange.h"
#import <objc/runtime.h>

@implementation UIImage (Exchange)

+ (void)load {
    Method imageWithName = class_getClassMethod(self, @selector(imageWithName:));
    Method imageNamed = class_getClassMethod(self, @selector(imageNamed:));
    method_exchangeImplementations(imageWithName, imageNamed);
    
}

+ (instancetype)imageWithName:(NSString *)name {
    
    UIImage *image = [self imageWithName:name];
    if (image == nil) {
        NSLog(@"图片没有就加载这个图片");
        image = [UIImage imageNamed:@"123"];
    }
    
    return image;
}


@end
