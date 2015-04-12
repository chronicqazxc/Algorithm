//
//  LinkedListOperator.m
//  LinkedList
//
//  Created by Wayne on 4/12/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import "LinkedListOperator.h"

@interface LinkedListOperator()
@property (strong, nonatomic) LinkedList *head;
@property (nonatomic) int i;
@property (nonatomic) int n;
@property (nonatomic) int a;
@end

@implementation LinkedListOperator

- (void)generateLinkedListWithArray:(NSMutableArray *)array {
    
    LinkedList *p;
    LinkedList *q;
    
    self.head = nil;
    for (NSNumber *value in array) {
        p = [[LinkedList alloc] init];
        p.data = value;
        if (self.head == nil) {
            self.head = p;
        } else {
            q.next = p;
        }
        q = p;
    }
}

- (void)printAllData {
    LinkedList *t = self.head;
    while (t != nil) {
        NSLog(@"%@",t.data);
        t = t.next;
    }
}

- (void)insertElement:(NSNumber *)number {
    LinkedList *t = self.head;
    while (t != nil) {
        if ([t.next.data compare:number] == NSOrderedDescending) {
            LinkedList *p = [[LinkedList alloc] init];
            p.data = number;
            p.next = t.next;
            t.next = p;
            break;
        }
        t = t.next;
    }
}

@end
