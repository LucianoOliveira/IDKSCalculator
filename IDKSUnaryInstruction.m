//
//  IDKSUnaryInstruction.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSUnaryInstruction.h"

@implementation IDKSUnaryInstruction

-(void) execute:(IDKSExecutionContext*) context
{
    if ([context.eStack count]<1)
    {
        [NSException raise:@"Invalid arguments" format:@"Warning: Not enough elements in stack"];
    }
    
    [context.eStack push: [self operate: [context.eStack pop]]];
    
}

-(id) operate: (id) operand1
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

@end
