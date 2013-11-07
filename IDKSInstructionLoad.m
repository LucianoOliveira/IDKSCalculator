//
//  IDKSInstructionLoad.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSInstructionLoad.h"
#import "IDKSLocalVars.h"
#import "IDKSCalculator.h"

@implementation IDKSInstructionLoad

-(void)execute:(IDKSExecutionContext *)context
{
    NSString* operand1 = [context.eStack pop];
    NSNumber* operand2 = [context.eStack pop];
    
    [context.localVars setValue:operand2 forKey:operand1];
    
}

-(NSString*)description
{
    return @"load";
}

@end
