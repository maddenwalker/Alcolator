//
//  WhiskeyViewController.m
//  Alcolator
//
//  Created by Ryan Walker on 9/30/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import "WhiskeyViewController.h"

@interface WhiskeyViewController ()

@end

@implementation WhiskeyViewController

- (void)buttonPressed:(UIButton *)sender {
    
    [self.beerPercentTextField resignFirstResponder];
    
    int numberOfBeers = self.beerCountSlider.value;
    int ouncesOfBeerInOneGlass = 12;
    
    float alcoholPercentageOfBeer = [self.beerPercentTextField.text floatValue] / 100;
    float ouncesOfAlcoholPerBeer = alcoholPercentageOfBeer * ouncesOfBeerInOneGlass;
    float ouncesOfAlcoholTotal = ouncesOfAlcoholPerBeer * numberOfBeers;
    
    float ouncesOfWhiskeyInOneGlass = 1;
    float alcoholPercentageOfWhiskey = 0.4;
    
    float ouncesOfAlcoholPerWhiskeyGlass = ouncesOfWhiskeyInOneGlass * alcoholPercentageOfWhiskey;
    float numberOfWhiskeyGlassesEquivalentToNumberOfBeers = ouncesOfAlcoholTotal / ouncesOfAlcoholPerWhiskeyGlass;
    
    NSString *beerText;
    
    if (numberOfBeers == 1) {
        beerText = NSLocalizedString(@"beer", @"singular of beer");
    } else {
        beerText = NSLocalizedString(@"beers", @"plural of beer");
    }
    
    NSString *whiskeyText;
    
    if (numberOfWhiskeyGlassesEquivalentToNumberOfBeers == 1) {
        whiskeyText = NSLocalizedString(@"glass", @"singular of glass");
    } else {
        whiskeyText = NSLocalizedString(@"glasses", @"plural of glass");
    }
    
    NSString *resultLabelText = [NSString stringWithFormat:NSLocalizedString(@"%d %@ (with %.2f%% alcohol) contains as much alcohol as %.1f %@ of whiskey.", nil), numberOfBeers, beerText, [self.beerPercentTextField.text floatValue], numberOfWhiskeyGlassesEquivalentToNumberOfBeers, whiskeyText];
    self.resultLabel.text = resultLabelText;
}

@end
