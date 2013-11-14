//
//  IDKSIntructionSubtract.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSIntructionSubtract.h"

@implementation IDKSIntructionSubtract


-(id)operate:(id) opr1 with:(id)opr2
{
    return [NSNumber numberWithInt:([(NSNumber*)opr2 intValue] - [(NSNumber*) opr1 intValue])];
}

-(NSString*)description
{
    NSString* str = @"-";
    //[str autorelease];
    return str;
}

@end
