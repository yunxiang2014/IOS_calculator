//
//  ViewController.h
//  calculator_2
//
//  Created by ChaiYunxiang on 8/27/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

int operation;
double showNumber;
double finalNumber;
bool isDecimal;

@interface ViewController : UIViewController{


    IBOutlet UILabel *CalResult;
}
- (IBAction)AC:(id)sender;
- (IBAction)MOD:(id)sender;
- (IBAction)Plus:(id)sender;
- (IBAction)Minus:(id)sender;
- (IBAction)Multiple:(id)sender;
- (IBAction)Divide:(id)sender;
- (IBAction)One:(id)sender;
- (IBAction)Two:(id)sender;
- (IBAction)Three:(id)sender;
- (IBAction)Four:(id)sender;
- (IBAction)Five:(id)sender;
- (IBAction)Six:(id)sender;
- (IBAction)PandN:(id)sender;

- (IBAction)Seven:(id)sender;
- (IBAction)Eight:(id)sender;
- (IBAction)Nine:(id)sender;
- (IBAction)Zero:(id)sender;
- (IBAction)Dot:(id)sender;
- (IBAction)Equal:(id)sender;


@end
