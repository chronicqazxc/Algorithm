//
//  main.m
//  BucketSort
//
//  Created by Wayne on 3/30/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BucketSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *arr = [NSMutableArray array];
        [arr addObject:[NSNumber numberWithInt:5]];
        [arr addObject:[NSNumber numberWithInt:3]];
        [arr addObject:[NSNumber numberWithInt:5]];
        [arr addObject:[NSNumber numberWithInt:2]];
        [arr addObject:[NSNumber numberWithInt:8]];
        BucketSort *bucketSort = [[BucketSort alloc] initWithArray:arr];
        NSLog(@"\nbefor sort:%@\n after sort:%@",arr,bucketSort.sortedArr);
    }
    return 0;
}