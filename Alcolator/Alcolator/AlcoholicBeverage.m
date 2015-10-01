//
//  AlcoholicBeverage.m
//  Alcolator
//
//  Created by Ryan Walker on 9/30/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import "AlcoholicBeverage.h"

@implementation AlcoholicBeverage

- (float)ouncesOfAlcoholPerServing {
    return ( self.alcoholicPercentage * self.typicalSizeOfServing );
}

- (float)alcoholServingsPerOunces:(float)ouncesOfAlcohol {
    return ( ouncesOfAlcohol / self.ouncesOfAlcoholPerServing );
}

- (float)ouncesOfAlcoholTotalForNumberOfBeverages:(float)numberOfBeverages {
    return ( numberOfBeverages * self.ouncesOfAlcoholPerServing );
}

- (NSString *)vesselDescriptorForQuantity:(NSString *)quantityOfBeverages {
    if ( [quantityOfBeverages floatValue] == 1) {
        return NSLocalizedString(@"glass", @"singular glass");
    } else {
        return NSLocalizedString(@"glasses", @"plural of glass");
    }
}

@end
