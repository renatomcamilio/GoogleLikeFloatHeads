//
//  FloatingButton.m
//  GoogleLikeFloatHeads
//
//  Created by Renato Camilio on 2/18/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import "FloatingButton.h"
#import "UIColor+Flat.h"


@implementation FloatingButton

#pragma mark - Initialization steps
- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupButtonBackgroundColor:[UIColor flatBlueColor] andTintColor:[UIColor whiteColor]];
}

- (instancetype)initWithFrame:(CGRect)frame andImage:(UIImage *)image andBackgroundColor:(UIColor *)backgroundColor {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = backgroundColor;
        [self setImage:image forState:UIControlStateNormal];
        [self setupButtonBackgroundColor:backgroundColor andTintColor:[UIColor whiteColor]];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    return [self initWithFrame:frame andImage:nil andBackgroundColor:[UIColor flatBlueColor]];
}

- (void)setupButtonBackgroundColor:(UIColor *)backgroundColor andTintColor:(UIColor *)tintColor {
    self.tintColor = tintColor;
    self.backgroundColor = backgroundColor;
    self.layer.cornerRadius = self.bounds.size.width/2; // half width makes it rounded
    self.layer.masksToBounds = YES;
    [self setBackgroundImage:[[UIColor blackColor] pixelImage] forState:UIControlStateHighlighted];
}




@end
