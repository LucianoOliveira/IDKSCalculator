//
//  IDKSViewController.m
//  Calculator
//
//  Created by Luciano Oliveira on 04/11/13.
//  Copyright (c) 2013 IDKS. All rights reserved.
//

#import "IDKSViewController.h"
#import "IDKSCalculator.h"
#import "IDKSInstruction.h"
#import "IDKSExecutionContext.h"
#import "IDKSLocalVars.h"

@interface IDKSViewController ()
@property (weak, nonatomic) IBOutlet UILabel *result;
@property (nonatomic) IDKSCalculator* calculator;
@property (nonatomic) NSNumber* visorNumber;
@property (nonatomic) NSNumber* pendingOperation;
@property (nonatomic) NSNumber* pendingValue;
@property (nonatomic) int lastKeyPressed;

@end

@implementation IDKSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _calculator = [IDKSCalculator new];
    _visorNumber = @0;
    _pendingOperation =@0;
    _lastKeyPressed =0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)click:(UIButton*)sender {
    NSNumber* value = @0;
    NSNumber* midResult = @0;
    
    NSNumber* numberInScreen = [NSNumber numberWithInteger:[self.result.text integerValue]];
    
    if ([_calculator.context.eStack count]==0) {
        [_calculator.context.eStack push:@0];
    }
    
    if ([numberInScreen intValue] <= 99999999) {
        //tags 0 to 9 are numbers
        if (sender.tag>=0 && sender.tag<=9) {
            
            value = [NSNumber numberWithInteger:sender.tag];
            [_calculator.context.eStack push:@10];
            midResult = [_calculator multiply];
            [_calculator.context.eStack push:value];
            midResult = [_calculator add];
            
            //get top and put it on the self.result.text
            NSNumber* resultGet = [_calculator.context.eStack top];
            self.result.text = [resultGet stringValue];
        }
        
        
    }
    
    
    //tags 10-add, 11-subtract, 12-multiply, 13-divide
    if (sender.tag>9 && sender.tag<14) {
        if (_lastKeyPressed>9 && _lastKeyPressed<14) {
            _pendingOperation = [NSNumber numberWithInteger:sender.tag];
        }
        else
        {
            if (![_pendingOperation isEqualToNumber:@0]) {
                if ([_pendingOperation isEqualToNumber:@10]) {
                    midResult = [_calculator add];
                }
                if ([_pendingOperation isEqualToNumber:@11]) {
                    midResult = [_calculator subtract];
                }
                if ([_pendingOperation isEqualToNumber:@12]) {
                    midResult = [_calculator multiply];
                }
                if ([_pendingOperation isEqualToNumber:@13]) {
                    midResult = [_calculator divide];
                }
                _pendingOperation = @0;
                //get top and put it on the self.result.text
                NSNumber* resultGet = [_calculator.context.eStack top];
                self.result.text = [resultGet stringValue];
                
            }
            _pendingOperation = [NSNumber numberWithInteger:sender.tag];
            [_calculator.context.eStack push:@0];
        }
        //[sender setBackgroundColor:[UIColor redColor]];
        
        
    }
    //tag 14-equals
    if (sender.tag==14)
    {
        if (![_pendingOperation isEqualToNumber:@0]) {
            if ([_pendingOperation isEqualToNumber:@10]) {
                midResult = [_calculator add];
            }
            if ([_pendingOperation isEqualToNumber:@11]) {
                midResult = [_calculator subtract];
            }
            if ([_pendingOperation isEqualToNumber:@12]) {
                midResult = [_calculator multiply];
            }
            if ([_pendingOperation isEqualToNumber:@13]) {
                midResult = [_calculator divide];
            }
            _pendingOperation = @0;
            //get top and put it on the self.result.text
            NSNumber* resultGet = [_calculator.context.eStack top];
            self.result.text = [resultGet stringValue];

        }
    }
    
    //tag 15-negation
    if (sender.tag==15)
    {
        if (![_pendingOperation isEqualToNumber:@0]) {
            if ([_pendingOperation isEqualToNumber:@10]) {
                midResult = [_calculator add];
            }
            if ([_pendingOperation isEqualToNumber:@11]) {
                midResult = [_calculator subtract];
            }
            if ([_pendingOperation isEqualToNumber:@12]) {
                midResult = [_calculator multiply];
            }
            if ([_pendingOperation isEqualToNumber:@13]) {
                midResult = [_calculator divide];
            }
            _pendingOperation = @0;
        }
        
        midResult = [_calculator negation];
        //get top and put it on the self.result.text
        NSNumber* resultGet = [_calculator.context.eStack top];
        self.result.text = [resultGet stringValue];
    }
    //tag 16-Clean
    if (sender.tag==16) {
        int x = [_calculator.context.eStack count];
        for (int i=0; i<x; i++) {
            midResult = [_calculator.context.eStack pop];
        }
        self.result.text = @"0";
        
    }
    
    //tag 17-Memory Set
    if (sender.tag==17)
    {
        if (![_pendingOperation isEqualToNumber:@0]) {
            _pendingOperation = @0;
        }
        
        
        //get top and put it on the self.result.text
        [_calculator.context.localVars setLocal:@"M1" withValue:[_calculator.context.eStack pop]];
        [_calculator.context.eStack push:@0];
        self.result.text = [[_calculator.context.eStack top] stringValue];
        
        
        
    }

    
    //tag 18-Memory Get
    if (sender.tag==18)
    {
        //Clear field on stack
        midResult = [_calculator.context.eStack pop];
        
        if (![_pendingOperation isEqualToNumber:@0]) {
            
            [_calculator.context.eStack push:[_calculator.context.localVars getLocal:@"M1"]];
            
            if ([_pendingOperation isEqualToNumber:@10]) {
                midResult = [_calculator add];
            }
            if ([_pendingOperation isEqualToNumber:@11]) {
                midResult = [_calculator subtract];
            }
            if ([_pendingOperation isEqualToNumber:@12]) {
                midResult = [_calculator multiply];
            }
            if ([_pendingOperation isEqualToNumber:@13]) {
                midResult = [_calculator divide];
            }
            _pendingOperation = @0;
        }
        else
        {
            //get top and put it on the self.result.text
            [_calculator.context.eStack push:[_calculator.context.localVars getLocal:@"M1"]];
        }
        self.result.text = [[_calculator.context.eStack top] stringValue];
        
        
        
    }
    
    _lastKeyPressed = sender.tag;
    
    
    
}

@end
