//
//  BubbleSort.m
//  BubbleSort
//
//  Created by Wayne on 3/30/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort
- (id)initWithArray:(NSMutableArray *)array {
    self = [super init];
    if (self) {
        self.bubble = [NSMutableArray arrayWithArray:[self bubbleSortArray:array]];
    }
    return self;
}

- (NSMutableArray *)bubbleSortArray:(NSMutableArray *)array {
    NSMutableArray *tempArray = [NSMutableArray arrayWithArray:array];
    int flag = (int)[tempArray count] - 1;
    for (int i = flag; i>0; i--) {
        for (int j = flag; j>0; j--) {
            int currentNumber = [tempArray[j] intValue];
            int nextNumber = [tempArray[j-1] intValue];
            if (currentNumber < nextNumber) {
                int temp = currentNumber;
                currentNumber = nextNumber;
                nextNumber = temp;
                tempArray[j] = [NSNumber numberWithInt:currentNumber];
                tempArray[j-1] = [NSNumber numberWithInt:nextNumber];
            }
        }
    }
    return tempArray;
}
@end
