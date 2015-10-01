//
//  CalculateAlcoholConversion.m
//  Alcolator
//
//  Created by Ryan Walker on 9/30/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import "CalculateAlcoholConversion.h"
#import "Beer.h"
#import "Wine.h"
#import "Whiskey.h"

@interface CalculateAlcoholConversion ()

@property (strong, nonatomic) Beer *myBeer;
@property (strong, nonatomic) Wine *myWine;
@property (strong, nonatomic) Whiskey *myWhiskey;

@end

@implementation CalculateAlcoholConversion

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.numberOfBeers = 1;
        self.myBeer = [[Beer alloc] init];
        self.myWine = [[Wine alloc] init];
        self.myWhiskey = [[Whiskey alloc] init];
        self.beerAlcoholPercentageContent = self.myBeer.alcoholicPercentage;
    }
    return self;
}

-(void)updateBeerAlcoholContent:(float)newAlcoholPercentageContent {
    self.myBeer.alcoholicPercentage = newAlcoholPercentageContent;
    self.beerAlcoholPercentageContent = self.myBeer.alcoholicPercentage;
}


-(float)convertBeerToWine {
    return [self.myWine convertAlcoholicServings:[self.myBeer ouncesOfAlcoholTotal:self.numberOfBeers]];
}

-(float)convertBeerToWhiskey {
    return [self.myWhiskey convertAlcoholicServings:[self.myBeer ouncesOfAlcoholTotal:self.numberOfBeers]];
}

-(NSString *)vesselDescription:(NSString *)typeOfAlcohol {
    
    if ( [typeOfAlcohol isEqualToString:@"Wine"] ) {
        return [self.myWine vesselDescriptor:[NSNumber numberWithFloat:self.convertBeerToWine]];
    } else if ( [typeOfAlcohol isEqualToString:@"Whiskey"] ) {
        return [self.myWhiskey vesselDescriptor:[NSNumber numberWithFloat:self.convertBeerToWhiskey]];
    } else {
        return [self.myBeer vesselDescriptor:self.numberOfBeers];
    }
        
}


@end
