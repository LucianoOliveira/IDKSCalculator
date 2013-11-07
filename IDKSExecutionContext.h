//
//  IDKSExecutionContext.h
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IDKSEvaluationStack;
@class IDKSLocalVars;

@interface IDKSExecutionContext : NSObject

@property (nonatomic, readonly, strong) IDKSEvaluationStack* eStack;
@property (nonatomic, readonly, strong) IDKSLocalVars* localVars;

@end