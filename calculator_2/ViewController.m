//
//  ViewController.m
//  calculator_2
//
//  Created by ChaiYunxiang on 8/27/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
        [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    finalNumber = 0;
    showNumber =0;
    operation = 0;
    isDecimal = false;
    CalResult.adjustsFontSizeToFitWidth = true;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setCalResuilt:(int)number{
    if(!isDecimal){
        showNumber *= 10;
        showNumber += number;
        CalResult.text = [NSString stringWithFormat:@"%.0f", showNumber];
    }
    else{
        CalResult.text = [CalResult.text stringByAppendingString:[NSString stringWithFormat:@"%d",number]];
        showNumber = [CalResult.text floatValue];
    }
    
}

- (void)CalculatrWithOperation:(int)number{
    
    isDecimal = false;
    if (finalNumber == 0) {
        finalNumber = showNumber;
        
    }else
        switch (operation) {
            case 1:
                finalNumber += showNumber;
                break;
            case 2:
                finalNumber -= showNumber;
                break;
            case 3:
                finalNumber *= showNumber;
                break;
            case 4:
                finalNumber /= showNumber;
                break;
            case 5:
                finalNumber = (int)round(finalNumber)%(int)round(showNumber);
                break;
            default:
                break;
        }
    operation = number;
    showNumber = 0;
}

- (IBAction)AC:(id)sender {
    finalNumber = 0;
    showNumber = 0;
    operation =0;
    isDecimal = false;
    CalResult.text = [NSString stringWithFormat:@"%i",0];
}

- (IBAction)MOD:(id)sender {
    
    if (finalNumber != 0) {
        [self CalculatrWithOperation:operation];
        CalResult.text = [NSString stringWithFormat:@"%.0f",finalNumber];
        showNumber = [CalResult.text floatValue];
        finalNumber = 0;
    }else{
        [self CalculatrWithOperation:5];
    }

}

- (IBAction)Plus:(id)sender {
    
    if (finalNumber != 0) {
        [self CalculatrWithOperation:operation];
        CalResult.text = [NSString stringWithFormat:@"%.0f",finalNumber];
        showNumber = [CalResult.text floatValue];
        finalNumber = 0;
    }else{
        [self CalculatrWithOperation:1];
    }

}

- (IBAction)Minus:(id)sender {
    
    if (finalNumber != 0) {
        [self CalculatrWithOperation:operation];
        CalResult.text = [NSString stringWithFormat:@"%.0f",finalNumber];
        showNumber = [CalResult.text floatValue];
        finalNumber = 0;
    }else{
        [self CalculatrWithOperation:2];
    }

}

- (IBAction)Multiple:(id)sender {
    
    if (finalNumber != 0) {
        [self CalculatrWithOperation:operation];
        CalResult.text = [NSString stringWithFormat:@"%.0f",finalNumber];
        showNumber = [CalResult.text floatValue];
        finalNumber = 0;
    }else{
        [self CalculatrWithOperation:3];
    }

}

- (IBAction)Divide:(id)sender {
    
    if (finalNumber != 0) {
        [self CalculatrWithOperation:operation];
        CalResult.text = [NSString stringWithFormat:@"%.0f",finalNumber];
        showNumber = [CalResult.text floatValue];
        finalNumber = 0;
    }else{
        [self CalculatrWithOperation:4];
    }
}

- (IBAction)One:(id)sender {
    [self setCalResuilt:1];
}

- (IBAction)Two:(id)sender {
    [self setCalResuilt:2];
}

- (IBAction)Three:(id)sender {
    [self setCalResuilt:3];
}

- (IBAction)Four:(id)sender {
    [self setCalResuilt:4];
}

- (IBAction)Five:(id)sender {
    [self setCalResuilt:5];
}

- (IBAction)Six:(id)sender {
    [self setCalResuilt:6];
}

- (IBAction)PandN:(id)sender {
    showNumber = 0 - showNumber;
    if(isDecimal)
        CalResult.text = [NSString stringWithFormat:@"%.2f", showNumber];
    else
        CalResult.text = [NSString stringWithFormat:@"%.0f", showNumber];
}

- (IBAction)Seven:(id)sender {
    [self setCalResuilt:7];
}

- (IBAction)Eight:(id)sender {
    [self setCalResuilt:8];
}

- (IBAction)Nine:(id)sender {
    [self setCalResuilt:9];
}

- (IBAction)Zero:(id)sender {
    [self setCalResuilt:0];
}

- (IBAction)Dot:(id)sender {
    isDecimal = true;
    NSRange range = [CalResult.text rangeOfString:@"."];
    if (range.location == NSNotFound) {
        CalResult.text = [CalResult.text stringByAppendingString:@"."];
    }
    
    
}

- (IBAction)Equal:(id)sender {
    [self CalculatrWithOperation:operation];
    CalResult.text = [NSString stringWithFormat:@"%.1f",finalNumber];
    showNumber = [CalResult.text floatValue];
    finalNumber = 0;
}
@end
