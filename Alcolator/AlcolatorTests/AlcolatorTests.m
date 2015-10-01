//
//  AlcolatorTests.m
//  AlcolatorTests
//
//  Created by Ryan Walker on 9/29/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface AlcolatorTests : XCTestCase

@property (nonatomic, strong) UIViewController *viewController;

@end

@implementation AlcolatorTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.viewController = [[ViewController alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBadgeDisplaysCorrectFigureOfAlcohol {
    //NSString *returnedBadgeString = [self.viewController]
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
