//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IDKSEvaluationStack.h"

@interface CalculatorTests : XCTestCase

@end

@implementation CalculatorTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//Test IsEmpty
-(void)testIsEmpty
{
    IDKSEvaluationStack* eStack = [[IDKSEvaluationStack alloc] init];
    [eStack push: @1];
    XCTAssertFalse(eStack.isEmpty, @"Instance should not be empty");
}

//Test Count
-(void)testCount
{
    IDKSEvaluationStack* eStack = [[IDKSEvaluationStack alloc] init];
    if ([eStack count]==0) {
        [eStack push: @1];
        if ([eStack count]==0) {
            XCTFail(@"Count is not working correctly");
        }
    }
    
}

//Test Top
-(void) testTop
{
    IDKSEvaluationStack* eStack = [[IDKSEvaluationStack alloc] init];
    if (eStack.isEmpty) {
        [eStack push: @12];
        XCTAssertFalse(![[eStack top]isEqualToNumber:@12], @"Top and/or Push is not working correctly");
    }
}



//
//Test Methods
//

//Test Push
-(void)testPush
{
    IDKSEvaluationStack* eStack = [[IDKSEvaluationStack alloc] init];
    [eStack push: @2];
    if (eStack.isEmpty && eStack.count==0) {
        XCTFail(@"Push of a value didn't work");
    }
    else{
        XCTAssertFalse(eStack.isEmpty, @"IsEmpty is not working correctly");
        XCTAssertFalse(eStack.count==0, @"Count is not working correctly");
    }
    
}

//Test Pop
-(void) testPop
{
    IDKSEvaluationStack* eStack = [[IDKSEvaluationStack alloc] init];
    if (eStack.isEmpty) {
        [eStack push: @12];
        NSNumber* popedNumber = [eStack top];
        if ([popedNumber isEqualToNumber:@12]) {
            XCTAssertFalse(![[eStack pop]isEqualToNumber:@12], @"Pop and/or Push is not working correctly");
            XCTAssertFalse([[eStack top]isEqualToNumber:@12], @"Pop didn't remove the object from the stack");
        }
        
    }
    
}


@end
