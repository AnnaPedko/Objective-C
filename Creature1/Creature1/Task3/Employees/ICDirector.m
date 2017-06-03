//
//  ICDirector.m
//  Creature1
//
//  Created by Anna P. on 03.05.17.
//  Copyright © 2017 Anna P. All rights reserved.
//

#import "ICDirector.h"
#import "ICAccountant.h"

const static NSUInteger ICDefaultExperience = 5;

@interface ICDirector()
- (void)makeProfit;

@end

@implementation ICDirector

- (instancetype)init {
    self = [super init];
    if (self) {
        self.experience = ICDefaultExperience;
    }
    
    return self;
}

- (void)makeProfit {
    self.salary = self.money;
}

- (void)performObjectSpecificOperation:(id)object {
    [self makeProfit];
}

@end
