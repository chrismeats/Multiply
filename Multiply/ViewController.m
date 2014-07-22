//
//  ViewController.m
//  Multiply
//
//  Created by ETC ComputerLand on 7/21/14.
//  Copyright (c) 2014 cmeats. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *myNumber;
@property (strong, nonatomic) IBOutlet UILabel *myMultiplier;
@property (strong, nonatomic) IBOutlet UILabel *myAnswer;
@property (strong, nonatomic) IBOutlet UISlider *myNumberSlider;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onCalculateButtonPressed:(id)sender {
    float myIntNum = [self.myNumber.text floatValue];
    float myIntMult = [self.myMultiplier.text integerValue];
    float myAnswer = myIntNum * myIntMult;

    self.myAnswer.text = [NSString stringWithFormat:@"%f", myAnswer];

    if (myAnswer > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }

    float mod3 = fmodf(myAnswer, 3);
    float mod5 = fmodf(myAnswer, 5);

    if(!mod3 && !mod5) {
        self.myAnswer.text = @"fizzbuzz";
    } else if(!mod3) {
        self.myAnswer.text = @"fizz";
    } else if(!mod5) {
        self.myAnswer.text = @"buzz";
    }

}
- (IBAction)onSliderChangeNumber:(id)sender {
    self.myNumber.text = [NSString stringWithFormat:@"%i", (int) self.myNumberSlider.value];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
