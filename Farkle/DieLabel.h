//
//  DieLabel.h
//  Farkle
//
//  Created by Kevin Kim on 3/24/16.
//  Copyright © 2016 Kevin Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DieLabelDelegate

@optional
-(void)foo;
@end


@interface DieLabel : UILabel
@property (nonatomic, assign) id <DieLabelDelegate> delegate;
@property int dieValue;

//class methods 
-(instancetype)initWithCoder:(NSCoder *)aDecoder;
-(void)roll;

@end
