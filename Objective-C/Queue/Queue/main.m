//
//  main.m
//  Queue
//
//  Created by Wayne on 4/1/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Queue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Queue *queue = [[Queue alloc] initWithDataArray:[NSMutableArray array]];
        for (int i=0; i<5; i++) {
            [queue addElement:i];
        }
        NSLog(@"%@",[queue getArray]);
        [queue removeElement];
        [queue removeElement];
        NSLog(@"%@",[queue getArray]);
    }
    return 0;
}
