//
//  Person.m
//  LessonCopyAndMutableCopy
//
//  Created by Frank on 14/10/22.
//  Copyright (c) 2014年 Frank. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(NSZone *)zone
{
    Person *newPerson = [[[self class] allocWithZone:zone] init];
    newPerson.name = [self.name copy];
    newPerson.gender = [self.gender copy];
    newPerson.age = self.age;
    return newPerson;
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
    Person *newPerson = [[[self class] allocWithZone:zone] init];
    newPerson.name = [self.name mutableCopy];
    newPerson.gender = [self.gender mutableCopy];
    newPerson.age = self.age;
    return newPerson;
}


- (void)dealloc
{
    self.name = nil;
    self.gender = nil;
    [super dealloc];
}
@end
