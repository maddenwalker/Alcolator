//
//  Wine.m
//  Alcolator
//
//  Created by Ryan Walker on 9/30/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import "Wine.h"

@implementation Wine

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.typicalSizeOfServing = 5;
        self.alcoholicPercentage = 0.13;
    }
    return self;
}

- (NSString *)vesselDescriptor:(NSNumber *)numberOfGlasses {
    if ( [numberOfGlasses floatValue] == 1) {
        return NSLocalizedString(@"glass", @"singular glass");
    } else {
        return NSLocalizedString(@"glasses", @"plural of glass");
    }
}


@end
