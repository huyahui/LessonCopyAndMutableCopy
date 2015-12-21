//
//  main.m
//  LessonCopyAndMutableCopy
//
//  Created by Frank on 14/10/22.
//  Copyright (c) 2014年 Frank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        /**
         *  深浅拷贝的区别:浅拷贝 拷贝 地址, 深拷贝 拷贝 内容
         */
        //字符串 对一个不可变字符串NSString对象 copy 与 mutableCopy
        //原有对象 str1 在常量区
//        NSString *str1 = @"Frank"; //str1 -- 常量区
//        NSLog(@"%p", str1);
//        //copy
//        NSString *str2 = [str1 copy];//str2 -- 常量区
//        NSLog(@"%p", str2);//str2 与 str1都指向常量区,地址相同,引用计数为无穷大
//        NSLog(@"str2 retaincount = %lu", [str2 retainCount]);
//        
//        //mutableCopy,深拷贝,拷贝内容,而且拷贝出来的是一个可变的对象
//        NSMutableString *str3 = [str1 mutableCopy];
//        NSLog(@"str3 retaincount = %lu", [str3 retainCount]);
//        [str3 appendString:@"lanou"];
//        NSLog(@"str3 = %@", str3);
        
        //原有对象  str1在堆区
//        NSString *str1 = [NSString stringWithFormat:@"Frank"];
//        NSLog(@"str1 = %p, retaincount = %lu", str1, [str1 retainCount]);
//        
//        //copy, 浅拷贝, 拷贝 地址, 并且将原有对象的引用计数加1.
//        NSString *str2 = [str1 copy];// str2与str1指向同一块堆区空间
//        NSLog(@"str2 = %p, retaincount = %lu", str2, [str2 retainCount]);
//        
//        //mutableCopy,深拷贝,拷贝内容,堆区开辟新的空间,并且拷贝出来的对象是可变的.
//        NSMutableString *str3 = [str1 mutableCopy];//str3与str1指向不同的对象
//        [str3 appendString:@"lanou"];
//        NSLog(@"str3 = %p, retaincount = %lu", str3, [str3 retainCount]);
        
        //字符串 对一个可变字符串NSMutableString对象 copy 与 mutableCopy
        //原有对象str1在堆区
//        NSMutableString *str1 = [[NSMutableString alloc] initWithFormat:@"Frank"];
//        NSLog(@"str1 = %p", str1);
//        //copy 堆区中开辟新的空间,拷贝内容到新的空间上,但是拷贝出来的是不可变字符串对象.
//        NSString *str2 = [str1 copy];
//        NSLog(@"str2 = %p, retaincount = %lu", str2, [str2 retainCount]);
//        
//        //mutableCopy 堆区中开辟新的空间,拷贝内容到新的空间上,但是拷贝出来的是可变字符串对象.
//        NSMutableString *str3 = [str1 mutableCopy];
//        [str3 appendString:@"lanou"];
//        NSLog(@"str3 = %p, retaincount = %lu", str3, [str3 retainCount]);
        
        /**
         *  总结:拷贝是分为可变对象与不可变对象.
            浅拷贝 ---  只拷贝对象地址,不会拷贝内容,不会开辟新的空间.
            深拷贝 ---  拷贝内容,堆区开辟新的空间.
            不可变对象: 1.copy 相当于retin, 原有对象引用计数加1,拷贝地址.
                     2.mutableCopy 复制出新的对象,并且对象是可变的,开呗内容.
            可变对象: 1.copy 复制出新的对象,但是对象是不可变的,拷贝内容.
                     2.mutableCopy 复制出新的对象,但是对象是可变的,拷贝内容.
         */
        //Person copy 与 mutableCopy
        NSString *name = [NSString stringWithFormat:@"Frank"];
        NSString *gender = [NSString stringWithFormat:@"Man"];
        
        Person *per = [[Person alloc] init];
        per.name = name;
        per.gender = gender;
        NSLog(@"per = %p", per);
        NSLog(@"per name = %p, gender = %p", per.name, per.gender);
        
        Person *copyPerson = [per copy];
        NSLog(@"copyPerson = %p, retaincount = %lu", copyPerson, [copyPerson retainCount]);
        NSLog(@"copyPerson name = %p, gender = %p", copyPerson.name, copyPerson.gender);

        Person *mutaCopyPerson = [per mutableCopy];
        NSLog(@"copymutaCopyPersonPerson = %p, retaincount = %lu", mutaCopyPerson, [mutaCopyPerson retainCount]);
        NSLog(@"mutaCopyPerson name = %p, gender = %p", mutaCopyPerson.name, mutaCopyPerson.gender);
    }
    return 0;
}

