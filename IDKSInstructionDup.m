//
//  IDKSInstructionDup.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSInstructionDup.h"

@implementation IDKSInstructionDup

-(void)execute:(IDKSExecutionContext *)context
{
    //id xpto = [context.eStack top];
    
    //Check type of class of a given variable
    //[xpto isKindOfClass:[NSNumber class]];
    
    if ([context.eStack count]<1)
    {
        [NSException raise:@"Invalid arguments" format:@"Warning: Not enough elements in stack"];
    }
    NSNumber* newVal = [context.eStack top];
    [context.eStack push: newVal];
}


-(NSString*)description
{
    return @"dup";
}

@end

