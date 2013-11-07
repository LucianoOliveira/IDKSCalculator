//
//  IDKSInstructionTests.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IDKSEvaluationStack.h"
#import "IDKSExecutionContext.h"
#import "IDKSInstruction.h"
#import "IDKSInstructionAdd.h"
#import "IDKSIntructionSubtract.h"

@interface IDKSInstructionTests : XCTestCase

@end

@implementation IDKSInstructionTests

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

- (void)testAdd
{
    IDKSExecutionContext* context = [IDKSExecutionContext new];
    IDKSEvaluationStack* evaluationStack = context.eStack;
    [evaluationStack push:@2];
    [evaluationStack push:@5];
    
    
    id <IDKSInstruction> instruction = [IDKSInstructionAdd new];
    [instruction execute:context];
    
    if (![[evaluationStack top]isEqualToNumber:@7]) {
        XCTFail(@"Add is not working correctly");
    }
}

- (void)testSubtract
{
    IDKSExecutionContext* context = [IDKSExecutionContext new];
    IDKSEvaluationStack* evaluationStack = context.eStack;
    [evaluationStack push:@2];
    [evaluationStack push:@5];
    
    
    id <IDKSInstruction> instruction = [IDKSIntructionSubtract new];
    [instruction execute:context];
    
    if (![[evaluationStack top]isEqualToNumber:@3]) {
        XCTFail(@"Subtract is not working correctly");
    }
}

@end
