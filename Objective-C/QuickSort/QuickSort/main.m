//
//  main.m
//  QuickSort
//
//  Created by Wayne on 3/31/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuickSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *arr = [NSMutableArray array];
        [arr addObject:[NSNumber numberWithInt:6]];
        [arr addObject:[NSNumber numberWithInt:1]];
        [arr addObject:[NSNumber numberWithInt:2]];
        [arr addObject:[NSNumber numberWithInt:7]];
        [arr addObject:[NSNumber numberWithInt:9]];
        [arr addObject:[NSNumber numberWithInt:3]];
        [arr addObject:[NSNumber numberWithInt:4]];
        [arr addObject:[NSNumber numberWithInt:5]];
        [arr addObject:[NSNumber numberWithInt:10]];
        [arr addObject:[NSNumber numberWithInt:8]];
        QuickSort *quickSort = [[QuickSort alloc] initWithArray:arr];
        NSLog(@"\nbefor quick sort:%@ \n after quick sort:%@",arr, quickSort.quickArr);
    }
    return 0;
}
