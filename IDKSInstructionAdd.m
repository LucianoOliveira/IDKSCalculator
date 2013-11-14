//
//  IDKSInstructionAdd.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSInstructionAdd.h"

@implementation IDKSInstructionAdd


-(id)operate:(id)opr1 with:(id)opr2
{
    return [NSNumber numberWithInt:([(NSNumber*)opr1 intValue] + [(NSNumber*) opr2 intValue])];
}

-(NSString*)description
{
    NSString* str = @"+";
    //[str autorelease];
    return str;
}

/*
 //Push a value to the top of the stack (Array)
 -(void) Execute:(IDKSEvaluationStack *)evaluationStack
 {
 if ([evaluationStack count]<2) {
 [NSException raise:@"Invalid arguments" format:@"Warning: Not enough elements in stack"];
 }
 
 NSNumber* opr1 = [evaluationStack pop];
 NSNumber* opr2 = [evaluationStack pop];
 [evaluationStack push:[NSNumber numberWithInt:([opr1 intValue] + [opr2 intValue])]];
 
 
 //////////////////////////////////////////////////////////////////
 id arg1 = [evaluationStack pop];
 id arg2 = [evaluationStack pop];
 SEL msgsl = @selector(intValue);
 
 if (![arg1 respondsToSelector:msgsl] || ![arg2 respondsToSelector:msgsl]) {
 [NSException raise:@"Invalid arguments" format:@"Warning: Arguments of wrong type"];
 }
 
 //Sum the two variables to the result variable
 
 [evaluationStack push:[NSNumber numberWithInt:([arg1 intValue] + [arg2 intValue])]];
 }
 
 */

@end
