//
//  IDKSInstructionFactorial.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSInstructionFactorial.h"

@implementation IDKSInstructionFactorial

-(id)operate:(IDKSExecutionContext*)context
{
    NSNumber* operand = [context.eStack pop];
    int result = 1;
    for(int i = [operand intValue]; i > 1; i-- ) {
        result *= i;
    }
    
    return [NSNumber numberWithInt:result];
}

-(NSString*)description
{
    NSString* str = @"factorial";
    //[str autorelease];
    return str;
}

@end

