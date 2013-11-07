//
//  IDKSExecutionContext.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSExecutionContext.h"
#import "IDKSEvaluationStack.h"
#import "IDKSLocalVars.h"

@implementation IDKSExecutionContext

@synthesize eStack = _eStack;


-(IDKSEvaluationStack*) eStack
{
    if (!_eStack) {
        _eStack = [IDKSEvaluationStack new];
    }
    return _eStack;
}

@synthesize localVars = _localVars;


-(IDKSLocalVars*) localVars
{
    if (!_localVars) {
        _localVars = [IDKSLocalVars new];
    }
    return _localVars;
}





/*Exemplo de release retain
 -(void) setEStack:(IDKSEvaluationStack* )value
 {
 [_eStack release];
 _eStack = value;
 [_eStack retain];
 }
 */

@end
