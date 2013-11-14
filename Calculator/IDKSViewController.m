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



@property (nonatomic, weak) UIButton* selectedOperation;
@property (nonatomic) BOOL isNumberMode;
@property (weak, nonatomic) IBOutlet UILabel* result;
@property (nonatomic, readonly) IDKSCalculator* calculator;

@end

@implementation IDKSViewController
@synthesize calculator = _calculator;

-(IDKSCalculator*) calculator
{
    if (_calculator==nil) {
        _calculator = [IDKSCalculator new];
    }
    return _calculator;
}

-(void)setSelectedOperation:(UIButton *)selectedOperation
{
    if (_selectedOperation) {
        _selectedOperation.backgroundColor = [UIColor orangeColor];
    }
    _selectedOperation = selectedOperation;
    _selectedOperation.backgroundColor = [UIColor redColor];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.isNumberMode = YES;
    self.result.text = @"0";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)operationClicked:(UIButton*)sender
{
    if (self.isNumberMode)
    {
        self.result.text = [[self.calculator pushOperand: [NSNumber numberWithInteger: [self.result.text integerValue]]] description];
        [self.calculator pushOperand: [NSNumber numberWithInteger: [self.result.text integerValue]]];
        self.isNumberMode = NO;
    }

    
    self.selectedOperation = sender;


}

- (IBAction)numberClicked:(UIButton*)sender
{
    NSString* digit = sender.titleLabel.text;
    
    if (!self.isNumberMode) {
        [self.calculator pushOperation: self.selectedOperation.titleLabel.text];
        self.isNumberMode = YES;
        self.result.text = digit;
        return;
    }
    
    [self addDigit:digit];  
}

-(void)addDigit:(NSString*)digit
{
    self.result.text = ([self.result.text isEqualToString:@"0"]) ?
            digit : [NSString stringWithFormat:@"%@%@",self.result.text,digit];
}

@end
