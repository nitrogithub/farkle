//
//  DieLabel.m
//  Farkle
//
//  Created by Kevin Kim on 3/24/16.
//  Copyright © 2016 Kevin Kim. All rights reserved.
//

#import "DieLabel.h"
@interface DieLabel()<UIGestureRecognizerDelegate>
@end

@implementation DieLabel


-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
    self =[super initWithCoder:aDecoder];
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tappedGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    self.gestureRecognizers = @[tappedGesture];
    for (UIGestureRecognizer *recognizer in self.gestureRecognizers) {
        recognizer.delegate = self;
    }
    }
    return self;
}


// When label is touched
-(void)handleTap:(UITapGestureRecognizer *)gestureRecognizer {
    if (gestureRecognizer.state == UIGestureRecognizerStateRecognized ||
        gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        [self checkWhichLabelWasTapped];
    }
}

-(void)checkWhichLabelWasTapped {
    if ([self viewWithTag:1]) {
        NSLog(@"1 was tapped");
    } else if ([self viewWithTag:2]) {
        NSLog(@"%li", (long)self.tag);
    } else if ([self viewWithTag:3]) {
        NSLog(@"3 was tapped");
    } else if ([self viewWithTag:4]) {
        NSLog(@"4 was tapped");
    } else if ([self viewWithTag:5]) {
        NSLog(@"5 was tapped");
    } else if ([self viewWithTag:6]) {
    }
}


//this runs in the viewController
-(void)roll {
    self.dieValue = (int) arc4random_uniform(6) + 1;
    self.text = [NSString stringWithFormat:@"%i", self.dieValue];
}

@end
