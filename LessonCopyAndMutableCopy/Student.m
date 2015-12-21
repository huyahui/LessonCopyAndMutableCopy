//
//  Student.m
//  LessonCopyAndMutableCopy
//
//  Created by Frank on 14/10/22.
//  Copyright (c) 2014年 Frank. All rights reserved.
//

#import "Student.h"

@implementation Student
//per1 setter方法内部实现
- (void)setPer1:(Person *)per1
{
    if (_per1 != per1) {
        [_per1 release];
        _per1 = [per1 retain];
    }
}
//per2 setter方法内部实现
- (void)setPer2:(Person *)per2
{
    if (_per2 != per2) {
        [_per2 release];
        _per2 = [per2 copy];
    }
}

- (void)dealloc
{
    self.per1 = nil;
    self.per2 = nil;
    [super dealloc];
}
@end
