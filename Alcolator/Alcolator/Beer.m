//
//  Beer.m
//  Alcolator
//
//  Created by Ryan Walker on 9/30/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import "Beer.h"

@implementation Beer

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.typicalSizeOfServing = 12;
        self.alcoholicPercentage = 0.07;
    }
    return self;
}

- (NSString *)vesselDescriptor:(int)numberOfBeers {
    if ( numberOfBeers == 1 ) {
        return NSLocalizedString(@"beer", @"singular beer");
    } else {
        return NSLocalizedString(@"beers", @"plural of beer");
    }
}

@end
