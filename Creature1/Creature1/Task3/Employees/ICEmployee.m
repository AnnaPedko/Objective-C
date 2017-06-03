//
//  ICEmployee.m
//  Creature1
//
//  Created by Anna P. on 03.05.17.
//  Copyright © 2017 Anna P. All rights reserved.
//

#import "ICEmployee.h"

@implementation ICEmployee

#pragma mark -
#pragma Overriden Methods

- (void)performObjectSpecificOperation:(id)object {
    
};

#pragma mark - 
#pragma Private Method

- (void)processObject:(id<ICFinancialFlow>)object {
    self.state = ICObjectBusy;
    [self takeMoneyFromObject:object];
    [self performObjectSpecificOperation:object];
    self.state = ICObjectFree;
}

#pragma mark -
#pragma ICFinancialFlow Methods

- (void)takeMoneyFromObject:(id<ICFinancialFlow>)object {
    [self takeMoney:[object giveMoney]];
}

- (void)takeMoney:(NSUInteger)money {
    self.money += money;
}

- (NSUInteger)giveMoney{
    NSUInteger money = self.money;
    self.money = 0;
    
    return money;
}

@end

