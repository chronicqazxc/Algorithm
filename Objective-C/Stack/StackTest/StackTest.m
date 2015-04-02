//
//  StackTest.m
//  StackTest
//
//  Created by Wayne on 4/2/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>

@interface StackTest : XCTestCase

@end

@implementation StackTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testArray {
    NSMutableArray *arr = [NSMutableArray array];
    [arr addObject:@1];
    [arr addObject:@2];
    [arr addObject:@3];
    [self showContent:arr];
    NSLog(@"-----------------------");
    [arr removeLastObject];
    [self showContent:arr];
    
}

- (void)showContent:(NSMutableArray *)arr {
    for (int i=0; i < [arr count]; i++) {
        NSLog(@"\nindex:%d, content:%@",[arr indexOfObject:[arr objectAtIndex:i]], [arr objectAtIndex:i]);
    }
}
@end
