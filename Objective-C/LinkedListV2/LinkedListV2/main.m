//
//  main.m
//  LinkedListV2
//
//  Created by Wayne on 4/12/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedListOperator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LinkedListOperator *linkedListOperator = [[LinkedListOperator alloc] init];
        [linkedListOperator generateLinkedListWithArray:[NSMutableArray arrayWithArray:@[@2,@3,@5,@8,@9,@10,@18,@26,@32]]];
        NSLog(@"generate linked list");
        [linkedListOperator printAllData];
        [linkedListOperator insertElement:@6];
        NSLog(@"insert element");
        [linkedListOperator printAllData];
        [linkedListOperator insertElement:@11];
        NSLog(@"insert element");
        [linkedListOperator printAllData];
    }
    return 0;
}
