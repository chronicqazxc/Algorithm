//
//  LinkedList.h
//  LinkedList
//
//  Created by Wayne on 4/12/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkedList : NSObject
@property (strong, nonatomic) NSNumber *data;
@property (strong, nonatomic) LinkedList *next;
@end
