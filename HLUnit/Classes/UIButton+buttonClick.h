//
//  UIButton+buttonClick.h
//  cococapodsDemo
//
//  Created by user on 2019/2/14.
//  Copyright © 2019年 HuLiYin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (buttonClick)
@property(nonatomic,assign)BOOL isClick;
@property(nonatomic,strong)NSString *remaind;
-(void)addImage:(UIImage *)image;
@end
