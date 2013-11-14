//
//  IDKSCalculator.h
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDKSEvaluationStack.h"
@class IDKSExecutionContext;

@interface IDKSCalculator : NSObject

@property (nonatomic, readonly) IDKSExecutionContext* context;

-(void)pushOperation:(NSString*)descriptor;
-(NSNumber*)pushOperand:(NSNumber*)operand;
-(NSNumber*)endSequence;

@end

