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

- (float)convertAlcoholicServings:(float)ouncesOfAlcohol {
    return ( ouncesOfAlcohol / self.ouncesOfAlcoholPerServing );
}

- (float)ouncesOfAlcoholTotal:(float)numberOfBeverages {
    return ( numberOfBeverages * self.ouncesOfAlcoholPerServing );
}

@end
