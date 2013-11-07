//
//  IDKSInstructionMultiply.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSInstructionMultiply.h"

@implementation IDKSInstructionMultiply


-(id)operate:(id)opr1 with:(id)opr2
{
    return [NSNumber numberWithInt:([(NSNumber*)opr1 intValue] * [(NSNumber*) opr2 intValue])];
}

-(NSString*)description
{
    NSString* str = @"multiply";
    //[str autorelease];
    return str;
}
@end
