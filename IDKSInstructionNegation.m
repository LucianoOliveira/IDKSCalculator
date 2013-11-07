//
//  IDKSInstructionNegation.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSInstructionNegation.h"

@implementation IDKSInstructionNegation

-(id)operate:(id)operand1
{
    return [NSNumber numberWithInt:([(NSNumber*)operand1 intValue] * -1 )];
}

-(NSString*)description
{
    NSString* str = @"negation";
    //[str autorelease];
    return str;
}
@end

