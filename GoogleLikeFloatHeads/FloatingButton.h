//
//  FloatingButton.h
//  GoogleLikeFloatHeads
//
//  Created by Renato Camilio on 2/18/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+Flat.h"


@interface FloatingButton : UIButton

- (void)setupButtonBackgroundColor:(UIColor *)backgroundColor andTintColor:(UIColor *)tintColor;
- (instancetype)initWithFrame:(CGRect)frame andImage:(UIImage *)image andBackgroundColor:(UIColor *)backgroundColor;

@end
