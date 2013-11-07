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

-(NSNumber*) add;
-(NSNumber*) subtract;
-(NSNumber*) multiply;
-(NSNumber*) divide;
-(NSNumber*) factorial;
-(NSNumber*) negation;
-(NSNumber*) dup;

@end

