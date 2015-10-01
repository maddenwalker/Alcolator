//
//  ViewController.m
//  Alcolator
//
//  Created by Ryan Walker on 9/29/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import "ViewController.h"
#import "CalculateAlcoholConversion.h"

@interface ViewController ()

@property (strong, nonatomic) CalculateAlcoholConversion *conversionCalculator;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.conversionCalculator = [[CalculateAlcoholConversion alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldDidChange:(UITextField *)sender {
    
    NSString *enteredText = sender.text;
    float enteredNumber = [enteredText floatValue];
    if ( enteredNumber == 0.0 ) {
        sender.text = nil;
    }
    
    [self.conversionCalculator updateBeerAlcoholContent: ( enteredNumber / 100 ) ];
    
    [self updateTitle];
    [self updateLabel];
    
}

- (IBAction)sliderValueDidChange:(UISlider *)sender {
    
    NSLog(@"Slider value changed to %f", sender.value);
    [self.beerPercentTextField resignFirstResponder];
    
    self.conversionCalculator.numberOfBeers = self.beerCountSlider.value;
    
    [self updateTitle];
    [self updateLabel];
}


- (IBAction)tapGestureDidFire:(UITapGestureRecognizer *)sender {
    [self.beerPercentTextField resignFirstResponder];
}

- (void)updateTitle {
     self.navigationItem.title = [NSString stringWithFormat:@"%@ (%.1f %@)", self.title, [self.conversionCalculator convertBeerTo:self.title], [self.conversionCalculator vesselDescription:self.title]];
}

- (void)updateLabel {
    
    self.resultLabel.text = [NSString stringWithFormat:
                               NSLocalizedString(@"%d %@ (with %.2f%% alcohol) contains as much alcohol as %.1f %@ of %@.", nil),
                                   self.conversionCalculator.numberOfBeers,
                                   [self.conversionCalculator vesselDescription:@"Beer"],
                                   ( self.conversionCalculator.beerAlcoholPercentageContent * 100 ),
                                   [self.conversionCalculator convertBeerTo:self.title],
                                   [self.conversionCalculator vesselDescription:self.title],
                                   self.title
                           ];
}

@end
