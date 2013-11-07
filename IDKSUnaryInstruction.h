//
//  IDKSUnaryInstruction.h
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDKSExecutionContext.h"
#import "IDKSEvaluationStack.h"
#import "IDKSInstruction.h"

@interface IDKSUnaryInstruction : NSObject <IDKSInstruction>

-(void) execute:(IDKSExecutionContext*) context;
-(id) operate: (id) operand1;

@end