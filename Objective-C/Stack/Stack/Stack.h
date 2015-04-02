//
//  Stack.h
//  Stack
//
//  Created by Wayne on 4/2/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject
- (id)initWithArray:(NSMutableArray *)array;
- (void)addElement:(int)element;
- (int)removeElement;
- (NSNumber *)top;
- (NSMutableArray *)getElements;
@end
