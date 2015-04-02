//
//  BucketSort.h
//  BucketSort
//
//  Created by Wayne on 3/30/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BucketSort : NSObject
@property (strong, nonatomic) NSMutableArray *sortedArr;
- (id)initWithArray:(NSMutableArray *)array;
@end
