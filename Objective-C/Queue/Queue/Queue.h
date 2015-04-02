//
//  Queue.h
//  Queue
//
//  Created by Wayne on 4/1/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Queue : NSObject
- (id)initWithDataArray:(NSMutableArray *)array;
- (void)addElement:(int)element;
- (void)removeElement;
- (NSMutableArray *)getArray;
@end
