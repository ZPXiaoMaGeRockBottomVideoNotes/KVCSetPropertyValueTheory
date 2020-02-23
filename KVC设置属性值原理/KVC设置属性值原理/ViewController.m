//
//  ViewController.m
//  KVC设置属性值原理
//
//  Created by 赵鹏 on 2019/5/8.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import "ViewController.h"
#import "ZPPerson.h"

@interface ViewController ()

@property (nonatomic, strong) ZPPerson *person;

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.person = [[ZPPerson alloc] init];
    
    /**
     通过KVC的方式修改对象的属性值或者成员变量值的原理：
     当调用KVC的"setValue: forKey: "方法以后，系统首先会在对象类的.m文件中寻找"setKey:"实例方法的实现，如果找到的话就传递参数、调用方法，如果找不到的话再在这个.m文件中继续寻找"_setKey:"实例方法的实现，如果找到的话就传递参数、调用方法。通过上述的两个实例方法来修改对象的属性值。如果上述的两个实例方法都找不到的话就接着再在这个.m文件中继续寻找"accessInstanceVariablesDirectly"类方法，如果找到的话就查看这个方法的返回值，如果返回值为NO，则意味着不能直接访问这个对象类的成员变量，程序会崩溃，在控制台中会抛出异常"NSUnknownKeyException"。如果返回值为YES，则意味着可以直接访问这个对象类的成员变量，并且会按照_key、_isKey、key、isKey的顺序来查找成员变量，如果找到的话则给它直接赋值，通过这种方式来修改对象类中的成员变量，如果还是没有找到的话则程序会崩溃，并且在控制台中会抛出异常"NSUnknownKeyException"。
     */
    [self.person setValue:[NSNumber numberWithInt:10] forKey:@"age"];
}

@end
