//
//  FarkleViewController.m
//  Farkle
//
//  Created by Kevin Kim on 3/24/16.
//  Copyright © 2016 Kevin Kim. All rights reserved.
//

#import "FarkleViewController.h"
#import "DieLabel.h"

@interface FarkleViewController () <DieLabelDelegate>
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel1;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel2;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel3;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel4;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel5;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel6;
@property int *randomNumber;

@end

@implementation FarkleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

// When button is pressed, method inside the DIELABLE class is called to update numbers
- (IBAction)rollDiceButton:(UIButton *)sender {
    [self.dieLabel1 roll];
    [self.dieLabel2 roll];
    [self.dieLabel3 roll];
    [self.dieLabel4 roll];
    [self.dieLabel5 roll];
    [self.dieLabel6 roll];

}


@end
