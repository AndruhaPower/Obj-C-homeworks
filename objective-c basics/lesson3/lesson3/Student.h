//
//  Student.h
//  lesson3
//
//  Created by Andrew on 12/01/2020.
//  Copyright © 2020 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSNumber * age;

- (instancetype)init:(NSString *) name withAge:(NSNumber *)age;

- (void)printSelfInfo;

+ (NSArray *)getStudentsList:(NSDictionary *)studentsDict;

@end

NS_ASSUME_NONNULL_END
