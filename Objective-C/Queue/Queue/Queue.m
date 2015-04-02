//
//  Queue.m
//  Queue
//
//  Created by Wayne on 4/1/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import "Queue.h"

@interface Queue()
@property (strong, nonatomic) NSMutableArray *queueArray;
@property (nonatomic) int head;
@property (nonatomic) int tail;
@end

@implementation Queue
- (id)initWithDataArray:(NSMutableArray *)array {
    self = [super init];
    if (self) {
        self.queueArray = [NSMutableArray arrayWithArray:array];
    }
    return self;
}

- (void)addElement:(int)element {
    if (!self.queueArray) {
        self.queueArray = [NSMutableArray array];
    }
    [self.queueArray insertObject:[NSNumber numberWithInt:element] atIndex:0];
}

- (void)removeElement {
    if (self.queueArray && [self.queueArray count] > 0) {
        [self.queueArray removeLastObject];
    }
}

- (NSMutableArray *)getArray {
    NSMutableArray *array = [NSMutableArray arrayWithArray:self.queueArray];
    return array;
}
@end
