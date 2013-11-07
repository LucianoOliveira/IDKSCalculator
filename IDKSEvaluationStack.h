//
//  IDKSEvaluationStack.h
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IDKSEvaluationStack : NSObject

@property (nonatomic, readonly) BOOL isEmpty;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id top;

-(id) pop;
-(void) push:(id) value;



@end

