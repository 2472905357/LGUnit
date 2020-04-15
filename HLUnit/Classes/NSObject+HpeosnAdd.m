//
//  NSObject+HpeosnAdd.m
//  cococapodsDemo
//
//  Created by user on 2019/2/14.
//  Copyright © 2019年 HuLiYin. All rights reserved.
//

#import "NSObject+HpeosnAdd.h"
#import <objc/runtime.h>
@implementation NSObject (HpeosnAdd)
//定义关联的key
static const char *key = "name";
//getter方法
- (NSString *)name {
    //根据key获取关联的值
    return objc_getAssociatedObject(self, key);
}

//setter方法
- (void)setName:(NSString *)name {
    //参数设置
    objc_setAssociatedObject(self, key, name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(void)getAge{
    
}
@end
