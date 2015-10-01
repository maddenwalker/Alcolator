//
//  ViewController.h
//  Alcolator
//
//  Created by Ryan Walker on 9/29/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *beerPercentTextField;
@property (weak, nonatomic) IBOutlet UISlider *beerCountSlider;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (strong, nonatomic) NSString *nameOfViewController;

@end

