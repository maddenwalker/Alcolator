//
//  ViewController.m
//  Alcolator
//
//  Created by Ryan Walker on 9/29/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import "ViewController.h"
#import "Beer.h"
#import "Wine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
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
    
}

- (IBAction)sliderValueDidChange:(UISlider *)sender {
    
    NSLog(@"Slider value changed to %f", sender.value);
    [self.beerPercentTextField resignFirstResponder];
    
}

- (IBAction)buttonPressed:(UIButton *)sender {
    
    [self.beerPercentTextField resignFirstResponder];
    
    //calculate the amount of alcohol in the beer
    int numberOfBeers = self.beerCountSlider.value;
    
    Beer *myBeer = [[Beer alloc] init];
    
    //change default alcoholic percentage
    myBeer.alcoholicPercentage = [self.beerPercentTextField.text floatValue] / 100;

    //now calculate the equivalent of wine . . .
    Wine *myWine = [[Wine alloc] init];
    float numberOfWineGlassesEquivalentToNumberOfBeers = [myWine convertAlcoholicServings:[myBeer ouncesOfAlcoholTotal:numberOfBeers]];
    
    //create final text string and put in the label
    self.resultLabel.text = [NSString stringWithFormat:
                             NSLocalizedString(@"%d %@ (with %.2f%% alcohol) contains as much alcohol as %.1f %@ of wine.", nil),
                                 numberOfBeers,
                                 [myBeer vesselDescriptor:numberOfBeers],
                                 [self.beerPercentTextField.text floatValue],
                                 numberOfWineGlassesEquivalentToNumberOfBeers,
                                 [myWine vesselDescriptor:[NSNumber numberWithFloat:numberOfWineGlassesEquivalentToNumberOfBeers]]
                             ];
}

- (IBAction)tapGestureDidFire:(UITapGestureRecognizer *)sender {
    [self.beerPercentTextField resignFirstResponder];
}

@end
