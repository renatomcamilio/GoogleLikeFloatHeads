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

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setup];
}

- (void)setup {
    /*
     
     Set the tintColor to whiteColor()
     Set the backgroundColor to flatBlueColor()
     Set the button’s layer cornerRadius and maskToBounds to make it a Blue circle.
     
     */
    
    self.tintColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor flathBlueColor];
    self.layer.cornerRadius = self.bounds.size.width/2; // half width makes it rounded
    self.layer.masksToBounds = YES;
}

@end
