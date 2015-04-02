//
//  main.m
//  BubbleSort
//
//  Created by Wayne on 3/30/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BubbleSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = [NSMutableArray array];
        [array addObject:[NSNumber numberWithInt:0]];
        [array addObject:[NSNumber numberWithInt:999]];
        [array addObject:[NSNumber numberWithInt:1000]];
        [array addObject:[NSNumber numberWithInt:1]];
        [array addObject:[NSNumber numberWithInt:6]];
        [array addObject:[NSNumber numberWithInt:15]];
        [array addObject:[NSNumber numberWithInt:22]];
        [array addObject:[NSNumber numberWithInt:50]];
        [array addObject:[NSNumber numberWithInt:100]];
        [array addObject:[NSNumber numberWithInt:8]];
        BubbleSort *bubbleSort = [[BubbleSort alloc] initWithArray:array];
        NSLog(@"\n before bubble sort:%@\n after bubble sort:%@",array,bubbleSort.bubble);
    }
    return 0;
}
