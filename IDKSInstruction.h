//
//  IDKSInstruction.h
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "IDKSEvaluationStack.h"
#import "IDKSExecutionContext.h"

@protocol IDKSInstruction <NSObject>

-(void) execute:(IDKSExecutionContext*) context;

@end
