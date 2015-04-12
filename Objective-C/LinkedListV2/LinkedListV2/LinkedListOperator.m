//
//  LinkedListOperator.m
//  LinkedListV2
//
//  Created by Wayne on 4/12/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import "LinkedListOperator.h"
#import "LinkedList.h"

@interface LinkedListOperator()
@property (strong, nonatomic) LinkedList *linkedList;
@end

@implementation LinkedListOperator
- (void)generateLinkedListWithArray:(NSMutableArray *)array {
    self.linkedList = [[LinkedList alloc] init];
    self.linkedList.data = [NSMutableArray array];
    self.linkedList.right = [NSMutableArray array];

    [self.linkedList.data addObject:@0];
    [self.linkedList.right addObject:@1];
    
    for (int i=1; i<=[array count]; i++) {
        [self.linkedList.data addObject:[array objectAtIndex:i-1]];
        
        if (i == [array count]) {
            [self.linkedList.right insertObject:@0 atIndex:i];
        } else {
            [self.linkedList.right addObject:[NSNumber numberWithInt:i+1]];
        }
    }
}

- (void)insertElement:(NSNumber *)number {
    [self.linkedList.data addObject:number];
    
    for (NSNumber *element in self.linkedList.right) {
        if ([[self.linkedList.data objectAtIndex:[element intValue]] compare:number] == NSOrderedDescending) {
            int index = (int)[self.linkedList.right indexOfObject:element];
            int count = (int)[self.linkedList.data count];
            
            [self.linkedList.right setObject:[NSNumber numberWithInt:--count] atIndexedSubscript:index];
            [self.linkedList.right addObject:[NSNumber numberWithInt:++index]];
            break;
        }
    }
}

- (void)printAllData {
    
    int i = 0;
    while ([[self.linkedList.right objectAtIndex:i] intValue] != 0) {
        int index = [[self.linkedList.right objectAtIndex:i] intValue];
        NSLog(@"%@",[self.linkedList.data objectAtIndex:index]);
        i = [[self.linkedList.right objectAtIndex:i] intValue];
    }
}

@end
