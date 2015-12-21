//
//  Student.h
//  LessonCopyAndMutableCopy
//
//  Created by Frank on 14/10/22.
//  Copyright (c) 2014年 Frank. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
@interface Student : NSObject
@property (nonatomic, retain) Person *per1;
@property (nonatomic, copy) Person *per2;
@end
