//
//  Stack.m
//  Stack
//
//  Created by Wayne on 4/2/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import "Stack.h"

@interface Stack()
@property (strong, nonatomic) NSMutableArray *stackArray;
@end

@implementation Stack
- (id)initWithArray:(NSMutableArray *)array {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)addElement:(int)element {
    if (!self.stackArray) {
        self.stackArray = [NSMutableArray array];
    }
    [self.stackArray addObject:[NSNumber numberWithInt:element]];
}

- (int)removeElement {
    int i = 0;
    if (self.stackArray) {
        i = [[self.stackArray lastObject] intValue];
        [self.stackArray removeLastObject];
    }
    return i;
}

- (NSNumber *)top {
    NSNumber *number = [NSNumber numberWithInt:0];
    if (self.stackArray) {
        number = [NSNumber numberWithInt:[[self.stackArray lastObject] intValue]];
    }
    return number;

}

- (NSMutableArray *)getElements {
    NSMutableArray *arr = [NSMutableArray arrayWithArray:self.stackArray];
    return arr;
}

@end
