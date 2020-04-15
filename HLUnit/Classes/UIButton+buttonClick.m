//
//  UIButton+buttonClick.m
//  cococapodsDemo
//
//  Created by user on 2019/2/14.
//  Copyright © 2019年 HuLiYin. All rights reserved.
//

#import "UIButton+buttonClick.h"
#import <objc/runtime.h>

@implementation UIButton (buttonClick)

static  const  char* isClickKey = "isClick";


-(BOOL)isClick{
    return objc_getAssociatedObject(self, isClickKey);
    
}
-(void)setIsClick:(BOOL)isClick{
    
    NSNumber *number = [NSNumber numberWithBool: isClick];
    objc_setAssociatedObject(self, isClickKey, number , OBJC_ASSOCIATION_RETAIN);
    
}
-(NSString *)remaind{
    return objc_getAssociatedObject(self, @"remaind");
}
-(void)setRemaind:(NSString *)remaind{
    objc_setAssociatedObject(self, @"remaind", remaind, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)addImage:(UIImage *)image{
    [self setBackgroundImage:image forState:UIControlStateNormal];
}

@end
