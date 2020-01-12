//
//  Animal.h
//  lesson3
//
//  Created by Andrew on 12/01/2020.
//  Copyright © 2020 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *legs;
@property (nonatomic, strong) NSString *sound;

- (instancetype)init:(NSNumber *)legs sound:(NSString *)sound name:(NSString *)name;

- (void)makeSound;

+ (void)primalCall:(Animal *)animalsArray;

@end

NS_ASSUME_NONNULL_END
