//
//  IDKSBinaryInstruction.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSBinaryInstruction.h"

@implementation IDKSBinaryInstruction

-(void) execute:(IDKSExecutionContext*) context
{
    if ([context.eStack count]<2)
    {
        [NSException raise:@"Invalid arguments" format:@"Warning: Not enough elements in stack"];
    }
    
    [context.eStack push: [self operate: [context.eStack pop] with:[context.eStack pop]]];
    
}

-(id) operate: (id) opr1 with:(id) opr2
{
    return nil;
}

@end
