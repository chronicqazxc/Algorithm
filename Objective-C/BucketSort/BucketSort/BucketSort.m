//
//  BucketSort.m
//  BucketSort
//
//  Created by Wayne on 3/30/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import "BucketSort.h"

@interface BucketSort()

@end

@implementation BucketSort
- (id)initWithArray:(NSMutableArray *)array {
    self = [super init];
    if (self) {
        self.sortedArr = [self sortArray:array];
    }
    return self;
}

- (NSMutableArray *)sortArray:(NSMutableArray *)array {
    int max = [[array valueForKeyPath:@"@max.intValue"] intValue];
    NSMutableArray *tempArr = [NSMutableArray array];
    for (int i=0; i<max+1; i++) {
        [tempArr addObject:[NSNumber numberWithInt:0]];
    }
    for (NSNumber *value in array) {
        int index = [value intValue];
        NSNumber *number =  [tempArr objectAtIndex:index];
        int newValue = [number intValue] + 1;
        NSNumber *newNumber = [NSNumber numberWithInt:newValue];
        tempArr[index] = newNumber;
    }
    NSMutableArray *bucket = [NSMutableArray array];
    int sum = (int)[tempArr count];
    sum--;
    for (int i=sum; i>0; i--) {
        int value = [[tempArr objectAtIndex:i] intValue];
        if (value) {
            for (int j=0; j<value; j++) {
                [bucket addObject:[NSNumber numberWithInt:i]];
            }
        }
    }
    return bucket;
}
@end
