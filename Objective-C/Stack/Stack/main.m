//
//  main.m
//  Stack
//
//  Created by Wayne on 4/2/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stack.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *arr = [NSMutableArray arrayWithObjects:@1,@2,@1,@2,@1,nil];
        int mid = (int)[arr count]/2-1;
        Stack *stack = [[Stack alloc] initWithArray:[NSMutableArray array]];
        for (int i=0; i<=mid; i++) {
            [stack addElement:[[arr objectAtIndex:i] intValue]];
        }
        
        int next = 0;
        if ([arr count]%2 == 0) {
            next = mid+1;
        } else {
            next = mid+2;
        }
        for (int i=next; i<=[arr count]-1; i++) {
            if ([[stack top] compare:[arr objectAtIndex:i]] != NSOrderedSame) {
                break;
            } else {
                [stack removeElement];
            }
        }
        
        if ([[stack getElements] count] == 0) {
            NSLog(@"\nThis is a recursion text.");
        } else {
            NSLog(@"\nThis is not a recursion text.");
        }
    }
    return 0;
}
