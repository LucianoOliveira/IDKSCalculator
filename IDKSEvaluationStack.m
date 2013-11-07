//
//  IDKSEvaluationStack.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSEvaluationStack.h"

@interface IDKSEvaluationStack()

@property (nonatomic, readonly) NSMutableArray* myStack;

@end


@implementation IDKSEvaluationStack
{
    //NSMutableArray declaration here
    //17-10-2013
    //NSMutableArray* _myStack;
}



//init
-(id) init
{
    if (self=[super init]) {
        _myStack =[[NSMutableArray alloc] init];
    }
    return self;
}


//Getters
-(BOOL)isEmpty
{
    return self.myStack.count==0;
}

-(NSUInteger) count
{
    return self.myStack.count;
}

-(id) top
{
    return self.myStack.lastObject;
}



//Methods
-(id) pop
{
    NSNumber* valueToPop = self.myStack.lastObject;
    [self.myStack removeLastObject];
    
    return valueToPop;
}

//Push a value to the top of the stack (Array)
-(void) push:(id)value
{
    [self.myStack addObject:value];
}


@end
