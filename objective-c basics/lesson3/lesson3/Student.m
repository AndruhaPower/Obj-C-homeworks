//
//  Student.m
//  lesson3
//
//  Created by Andrew on 12/01/2020.
//  Copyright © 2020 Andrew. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)init:(NSString *)name withAge:(NSNumber *)age {
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
    }
    return self;
}

- (void)printSelfInfo {
    NSLog(@"Current student info: \n Name -  %@,\n Age - %@", self.name, self.age);
}

+ (NSArray *)getStudentsList:(NSDictionary *)studentsDict {
    NSMutableArray *studentsList = [NSMutableArray arrayWithCapacity:studentsDict.count];
    for (NSString *key in studentsDict) {
        Student *student = [[Student alloc] init:key withAge:studentsDict[key]];
        [studentsList addObject:student];
    }
    return studentsList;
}

@end
