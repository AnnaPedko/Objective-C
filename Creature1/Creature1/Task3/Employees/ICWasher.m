//
//  ICWasher.m
//  Creature1
//
//  Created by Anna P. on 03.05.17.
//  Copyright © 2017 Anna P. All rights reserved.
//

#import "ICWasher.h"
#import "ICCar.h"
#import "ICCarWash.h"

const static NSUInteger ICDefaultExperience = 2;

@implementation ICWasher

#pragma mark -
#pragma Initializer

- (instancetype)init {
    self = [super init];
    if (self) {
        self.experience = ICDefaultExperience;
    }
    
    return self;
}

#pragma mark -
#pragma Overriden Methods

- (void)performObjectSpecificOperation:(id<ICFinancialFlow>)car {
    [self washCar:car];
}

#pragma mark -
#pragma Private Methods

- (void)washCar:(ICCar *)car {
    if (car.state == ICCarDirty) {
        car.state = ICCarClean;
    }
}

- (void)processObject:(id<ICFinancialFlow>)car{
    [super processObject:car];
}

@end
