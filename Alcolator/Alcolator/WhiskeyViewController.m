//
//  WhiskeyViewController.m
//  Alcolator
//
//  Created by Ryan Walker on 9/30/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import "WhiskeyViewController.h"
#import "Beer.h"
#import "Whiskey.h"

@interface WhiskeyViewController ()

@end

@implementation WhiskeyViewController

- (void)buttonPressed:(UIButton *)sender {
    
    [self.beerPercentTextField resignFirstResponder];
    
    int numberOfBeers = self.beerCountSlider.value;
    
    Beer *myBeer = [[Beer alloc] init];
    myBeer.alcoholicPercentage = [self.beerPercentTextField.text floatValue] / 100;
    
    Whiskey *myWhiskey = [[Whiskey alloc] init];
    float numberOfWhiskeyGlassesEquivalentToNumberOfBeers = [myWhiskey convertAlcoholicServings:[myBeer ouncesOfAlcoholTotal:numberOfBeers]];
    
    self.resultLabel.text = [NSString stringWithFormat:
                                 NSLocalizedString(@"%d %@ (with %.2f%% alcohol) contains as much alcohol as %.1f %@ of whiskey.", nil), numberOfBeers,
                                     [myBeer vesselDescriptor:numberOfBeers],
                                     [self.beerPercentTextField.text floatValue],
                                     numberOfWhiskeyGlassesEquivalentToNumberOfBeers,
                                     [myWhiskey vesselDescriptor:[NSNumber numberWithFloat:numberOfWhiskeyGlassesEquivalentToNumberOfBeers]]
                                 ];
}

@end
