//
//  IDKSLocalVars.h
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IDKSLocalVars : NSObject

-(id) getLocal:(NSString*) name;
-(void) setLocal:(NSString*) name withValue:(id)value;
@end
