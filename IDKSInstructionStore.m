//
//  IDKSInstructionStore.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSInstructionStore.h"
#import "IDKSLocalVars.h"
#import "IDKSCalculator.h"

@implementation IDKSInstructionStore


-(void)execute:(IDKSExecutionContext *)context
{
    NSString* operand1 = [context.eStack pop];
    NSNumber* result = [context.localVars getLocal:operand1];
    [context.eStack push:[NSNumber numberWithInt:([(NSNumber*)result intValue])]];
    
}



-(NSString*)description
{
    return @"store";
}


@end