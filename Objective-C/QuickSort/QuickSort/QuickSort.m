//
//  QuickSort.m
//  QuickSort
//
//  Created by Wayne on 3/31/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import "QuickSort.h"

@interface QuickSort()
@end

@implementation QuickSort
- (id)initWithArray:(NSMutableArray *)arr {
    self = [super init];
    if (self) {
        self.quickArr = [NSMutableArray arrayWithArray:arr];
        [self quickSortArr:self.quickArr left:0 right:(int)[arr count]-1];
    }
    return self;
}

- (void)quickSortArr:(NSMutableArray *)arr left:(int)left right:(int)right {
    int i, j, temp;
    
    if (left > right) {
        return;
    }
    
    i = left;
    j = right;
    temp = [[arr objectAtIndex:left] intValue];
    while (i != j) {
        while ([arr[j] intValue] >= temp && i < j) {
            j--;
        }
        while ([arr[i] intValue] <= temp && i < j) {
            i++;
        }
        if (i < j) {
            int tempInt = [arr[i] intValue];
            arr[i] = [NSNumber numberWithInt:[arr[j] intValue]];
            arr[j] = [NSNumber numberWithInt:tempInt];
        }
    }
    int tempInt = [arr[i] intValue];
    arr[i] = [NSNumber numberWithInt:[arr[left] intValue]];
    arr[left] = [NSNumber numberWithInt:tempInt];
    
    [self quickSortArr:arr left:left right:i-1];
    [self quickSortArr:arr left:i+1 right:right];
}
@end
