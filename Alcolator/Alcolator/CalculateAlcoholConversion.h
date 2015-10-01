//
//  CalculateAlcoholConversion.h
//  Alcolator
//
//  Created by Ryan Walker on 9/30/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Beer.h"

@interface CalculateAlcoholConversion : NSObject

@property int numberOfBeers;
@property float beerAlcoholPercentageContent;

-(float)convertBeerToWine;
-(float)convertBeerToWhiskey;

-(void)updateBeerAlcoholContent:(float)newAlcoholPercentageContent;
-(NSString *)vesselDescription:(NSString *)typeOfAlcohol;

@end
