//
//  ZPPerson.m
//  KVC设置属性值原理
//
//  Created by 赵鹏 on 2019/5/8.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import "ZPPerson.h"

@implementation ZPPerson

- (void)setAge:(int)age
{
    NSLog(@"setAge: - %d", age);
}

- (void)_setAge:(int)age
{
    NSLog(@"_setAge: - %d", age);
}

//是否可以直接访问本类的成员变量：YES可以直接访问成员变量，NO不能直接访问成员变量，默认返回YES。
+ (BOOL)accessInstanceVariablesDirectly
{
    return YES;
}

@end
