//
//  Person.h
//  LessonCopyAndMutableCopy
//
//  Created by Frank on 14/10/22.
//  Copyright (c) 2014年 Frank. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying, NSMutableCopying>
@property (nonatomic, copy) NSString *name; //姓名
@property (nonatomic, copy) NSString *gender; //性别
@property (nonatomic) NSInteger age;//年龄
@end
