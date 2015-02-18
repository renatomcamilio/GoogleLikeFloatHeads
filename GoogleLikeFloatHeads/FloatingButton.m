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

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setup];
}

- (void)setup {
    self.tintColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor flathBlueColor];
    self.layer.cornerRadius = self.bounds.size.width/2; // half width makes it rounded
    self.layer.masksToBounds = YES;
    [self setBackgroundImage:[[UIColor blackColor] pixelImage] forState:UIControlStateHighlighted];
}

@end
