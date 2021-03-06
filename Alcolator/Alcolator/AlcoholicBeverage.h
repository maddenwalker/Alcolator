//
//  AlcoholicBeverage.h
//  Alcolator
//
//  Created by Ryan Walker on 9/30/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlcoholicBeverage : NSObject

@property (strong, nonatomic) NSString *name;
@property float alcoholicPercentage;
@property float typicalSizeOfServing;

- (float)ouncesOfAlcoholPerServing;
- (float)alcoholServingsPerOunces:(float)ouncesOfAlcohol;
- (float)ouncesOfAlcoholTotalForNumberOfBeverages:(float)numberOfBeverages;
- (NSString *)vesselDescriptorForQuantity:(NSNumber *)quantityOfBeverages;

@end
