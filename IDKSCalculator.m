//
//  IDKSCalculator.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSCalculator.h"
#import "IDKSInstruction.h"
#import "IDKSInstructionAdd.h"
#import "IDKSIntructionSubtract.h"
#import "IDKSInstructionMultiply.h"
#import "IDKSInstructionDivide.h"
#import "IDKSInstructionFactorial.h"
#import "IDKSInstructionNegation.h"
#import "IDKSInstructionDup.h"
#import "IDKSExecutionContext.h"

@interface IDKSCalculator()


@property (nonatomic, readonly) NSDictionary* operations;

@end

@implementation IDKSCalculator

@synthesize context = _context;

-(IDKSExecutionContext* ) context
{
    if (!_context) {
        _context = [IDKSExecutionContext new];
    }
    
    return _context;
}


@synthesize operations = _operations;

-(NSDictionary* ) operations
{
    if (!_operations) {
        NSMutableDictionary* ops = [NSMutableDictionary new];
        ops[@"add"]=[IDKSInstructionAdd new];
        ops[@"subtract"]=[IDKSIntructionSubtract new];
        ops[@"multiply"]=[IDKSInstructionMultiply new];
        ops[@"divide"]=[IDKSInstructionDivide new];
        ops[@"factorial"]=[IDKSInstructionFactorial new];
        ops[@"negation"]=[IDKSInstructionNegation new];
        ops[@"dup"]=[IDKSInstructionDup new];
        _operations = ops;
    }
    
    return _operations;
}

-(NSNumber*) add
{
    //[self.operations objectForKey:@"add"];
    [self.operations[@"add"] execute:self.context];
    
    return [self.context.eStack top];
}

-(NSNumber*) subtract
{
    [self.operations[@"subtract"] execute:self.context];
    
    return [self.context.eStack top];
}

-(NSNumber*) multiply
{
    [self.operations[@"multiply"] execute:self.context];
    
    return [self.context.eStack top];
}

-(NSNumber*) divide
{
    [self.operations[@"divide"] execute:self.context];
    
    return [self.context.eStack top];
}

-(NSNumber*) factorial
{
    [self.operations[@"factorial"] execute:self.context];
    
    return [self.context.eStack top];
}

-(NSNumber*) negation
{
    [self.operations[@"negation"] execute:self.context];
    
    return [self.context.eStack top];
}

-(NSNumber*) dup
{
    [self.operations[@"dup"] execute:self.context];
    
    return [self.context.eStack top];
}


@end

