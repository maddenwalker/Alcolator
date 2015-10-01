//
//  Whiskey.m
//  Alcolator
//
//  Created by Ryan Walker on 9/30/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import "Whiskey.h"

@implementation Whiskey

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.typicalSizeOfServing = 1;
        self.alcoholicPercentage = 0.4;
    }
    return self;
}

- (NSString *)vesselDescriptor:(NSNumber *)numberOfShots {
    if ( [ numberOfShots floatValue ] == 1) {
        return NSLocalizedString(@"shot", @"singular shot");
    } else {
        return NSLocalizedString(@"shots", @"plural of shot");
    }
}


@end
