//
//  ViewController.m
//  Alcolator
//
//  Created by Ryan Walker on 9/29/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import "ViewController.h"

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
    int ouncesInOneBeerGlass = 12; //assumed 12oz bottles
    float alcoholPercentageOfBeer = [self.beerPercentTextField.text floatValue] / 100;
    float ouncesOfAlcoholPerBeer = ouncesInOneBeerGlass * alcoholPercentageOfBeer;
    float ouncesOfAlcoholTotal = numberOfBeers * ouncesOfAlcoholPerBeer;

    //now calculate the equivalent of wine . . .
    float ouncesOfWineInOneGlass = 5; //assumed 5oz glass
    float alcoholPercentageOfWine = 0.13; //assumed average
    float ouncesOfAlcoholPerGlassOfWine = ouncesOfWineInOneGlass * alcoholPercentageOfWine;
    float numberOfWineGlassesEquivalentToNumberOfBeers = ouncesOfAlcoholTotal / ouncesOfAlcoholPerGlassOfWine;
    
    //decide whether to use beers or beer, glass or glasses
    NSString *beerText;
    if ( numberOfBeers == 1 ) {
        beerText = NSLocalizedString(@"beer", @"singular beer");
    } else {
        beerText = NSLocalizedString(@"beers", @"plural of beer");
    }
    
    NSString *wineText;
    if ( numberOfWineGlassesEquivalentToNumberOfBeers == 1.0 ) {
        wineText = NSLocalizedString(@"glass", @"singular glass");
    } else {
        wineText = NSLocalizedString(@"glasses", @"plural of glass");
    }
    
    //create final text string and put in the label
    NSString *resultLabelText = [NSString stringWithFormat:NSLocalizedString(@"%d %@ (with %.2f%% alcohol) contains as much alcohol as %.1f %@ of wine.", nil), numberOfBeers, beerText, [self.beerPercentTextField.text floatValue], numberOfWineGlassesEquivalentToNumberOfBeers, wineText];
    self.resultLabel.text = resultLabelText;
}

- (IBAction)tapGestureDidFire:(UITapGestureRecognizer *)sender {
    [self.beerPercentTextField resignFirstResponder];
}

@end
