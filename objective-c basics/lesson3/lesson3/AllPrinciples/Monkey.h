//
//  Monkey.h
//  lesson3
//
//  Created by Andrew on 12/01/2020.
//  Copyright © 2020 Andrew. All rights reserved.
//

#import "Animal.h"

NS_ASSUME_NONNULL_BEGIN

//инкапсуляция , наружу торчит только то что будет использоваться , ноги, звук инкапсулированы в класс Monkey

@interface Monkey : Animal

@property (nonatomic, strong) NSString *type;

- (instancetype)init:(NSString *)type;

- (void)makeSound;


@end

NS_ASSUME_NONNULL_END
