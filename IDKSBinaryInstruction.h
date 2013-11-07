//
//  IDKSBinaryInstruction.h
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDKSEvaluationStack.h"
#import "IDKSExecutionContext.h"
#import "IDKSInstruction.h"

@interface IDKSBinaryInstruction : NSObject <IDKSInstruction>

-(void) execute:(IDKSExecutionContext*) context;
-(id) operate: (id) opr1 with:(id) opr2;

@end