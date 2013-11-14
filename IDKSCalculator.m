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
@property (nonatomic) NSString* pendingOperation;

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
        id<IDKSInstruction> inst = nil;
        ops[[inst description]]= (inst=[IDKSInstructionAdd new]);
        ops[[inst description]]= (inst=[IDKSIntructionSubtract new]);
        ops[[inst description]]= (inst=[IDKSInstructionMultiply new]);
        ops[[inst description]]= (inst=[IDKSInstructionDivide new]);
        ops[[inst description]]= (inst=[IDKSInstructionNegation new]);
        
        //ops[@"factorial"]=[IDKSInstructionFactorial new];
        //ops[@"dup"]=[IDKSInstructionDup new];
        
        _operations = ops;
    }
    
    return _operations;
}


-(NSNumber*)pushOperand:(NSNumber*)operand
{
    [self.context.eStack push:operand];
    
    if (self.pendingOperation) {
        [self.operations[self.pendingOperation] execute:self.context];
    }
    return [self.context.eStack top];

}
-(void)pushOperation:(NSString*)descriptor
{
    self.pendingOperation=descriptor;
}
-(NSNumber*)endSequence
{
    self.pendingOperation=nil;
    return [self.context.eStack top];
}

@end

