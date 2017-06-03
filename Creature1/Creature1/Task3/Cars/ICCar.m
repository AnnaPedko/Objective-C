//
//  ICCar.m
//  Creature1
//
//  Created by Anna P. on 03.05.17.
//  Copyright © 2017 Anna P. All rights reserved.
//

#import "ICCar.h"

#import "NSObject+ICExtensions.h"

const static NSUInteger defaultMoney = 200;

@implementation ICCar

@synthesize money;

#pragma mark -
#pragma mark Initializations and Deallocation

- (instancetype)init {
    self = [super init];
    if (self) {
        self.money = defaultMoney;
        self.state = ICCarDirty;
    }
    
    return self;
}

#pragma mark -
#pragma ICFinancialFlow Methods

- (NSUInteger)giveMoney {
    NSUInteger carMoney = self.money;
    self.money = 0;
    
    return carMoney;
}

@end
