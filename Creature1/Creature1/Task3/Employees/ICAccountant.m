//
//  ICAccountant.m
//  Creature1
//
//  Created by Anna P. on 03.05.17.
//  Copyright © 2017 Anna P. All rights reserved.
//

#import "ICAccountant.h"
#import "ICCarWash.h"

const static NSUInteger ICDefaultExperience = 5;
const static double ICInterestSalary = 0.1;

@implementation ICAccountant

#pragma mark - 
#pragma mark Initializations and Deallocation

- (instancetype) init {
    self = [super init];
    if (self) {
        self.experience = ICDefaultExperience;
    }
    
    return self;
}

#pragma mark - 
#pragma Overriden Methods

- (void)performObjectSpecificOperation:(id)object {
    [self takeMoneyFromObject:object];
    [self calculateSalary:object];
}

#pragma mark - 
#pragma Private Methods

- (void)calculateSalary:(ICEmployee *)employee {
    employee.salary = ICInterestSalary * self.money;
    self.money -= employee.salary;
}

- (void)processObject:(ICEmployee *)object {
    [super processObject:object];
}

@end
