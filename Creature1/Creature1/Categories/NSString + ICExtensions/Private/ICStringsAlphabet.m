//
//  ICStringsAlphabet.m
//  Creature1
//
//  Created by Anna P. on 26.05.17.
//  Copyright © 2017 Anna P. All rights reserved.
//

#import "ICStringsAlphabet.h"

@interface ICStringsAlphabet ()
@property (nonatomic, retain)   NSArray *strings;

@end

@implementation ICStringsAlphabet

#pragma mark -
#pragma mark Initializations and Deallocations

- (void)dealloc {
    self.strings = nil;
    
    [super dealloc];
}

- (instancetype)initWithStrings:(NSArray *)strings {
    self = [super init];
    if (self) {
        self.strings = strings;
    }
    
    return self;
}

#pragma mark -
#pragma mark Public

- (NSUInteger)count {
    return [self.strings count];
}
- (NSString *)stringAtIndex:(NSUInteger)index {
    return self.strings[index];
}

#pragma mark -
#pragma mark NSFastEnumeration

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state
                                  objects:(id *)stackbuf
                                    count:(NSUInteger)resultLength
{
    return [self.strings countByEnumeratingWithState:state
                                             objects:stackbuf
                                               count:resultLength];
}

@end
