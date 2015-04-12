//
//  main.m
//  LinkedList
//
//  Created by Wayne on 4/12/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedListOperator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LinkedListOperator *linkedListOperator = [[LinkedListOperator alloc] init];
        [linkedListOperator generateLinkedListWithArray:[NSMutableArray arrayWithArray:@[@2,@3,@5,@8,@9,@10]]];
        NSLog(@"generate");
        [linkedListOperator printAllData];
        [linkedListOperator insertList:@6];
        NSLog(@"after insert");
        [linkedListOperator printAllData];
    }
    return 0;
}
