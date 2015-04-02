//
//  QuickSortTest.m
//  QuickSortTest
//
//  Created by Wayne on 4/1/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>

@interface QuickSortTest : XCTestCase

@end

@implementation QuickSortTest

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

- (void)testRecursion {
    [self functionLeft:3 right:0];
}

- (void)functionLeft:(int)left right:(int)right{
    NSLog(@"enter left:%d, right:%d",left,right);
    if (left <= 0) return;
    left--;
    NSString *name = @"";
    switch (left) {
        case 3:
            name = @"three";
            break;
        case 2:
            name = @"two";
            break;
        case 1:
            name = @"one";
            break;
        case 0:
            name = @"zero";
            break;
        default:
            name = @"default";
            break;
    }
    NSLog(@"%@, %p:",name,name);
    [self functionLeft:left right:right];
    right++;
    NSLog(@"%@, %p~ left:%d right:%d",name,name,left,right);
}

@end
