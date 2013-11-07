//
//  IDKSLocalVars.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSLocalVars.h"

@interface IDKSLocalVars()

@property (nonatomic, readonly) NSMutableDictionary* localVars;

@end


@implementation IDKSLocalVars


//init
-(id) init
{
    if (self=[super init])
    {
        _localVars = [NSMutableDictionary new];
    }
    return self;
}

-(id) getLocal:(NSString*)name
{
    
    return [self.localVars valueForKey:name];
    
}

-(void)setLocal:(NSString*)name withValue:(id)value
{
    [self.localVars setValue:value forKey:name];
    
}

@end
