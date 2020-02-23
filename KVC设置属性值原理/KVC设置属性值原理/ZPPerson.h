//
//  ZPPerson.h
//  KVC设置属性值原理
//
//  Created by 赵鹏 on 2019/5/8.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZPPerson : NSObject
{
    @public
    int _age;
    int _isAge;
    int age;
    int isAge;
}

@end

NS_ASSUME_NONNULL_END
