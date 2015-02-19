//
//  UIColor+Flat.m
//  GoogleLikeFloatHeads
//
//  Created by Renato Camilio on 2/18/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import "UIColor+Flat.h"


@implementation UIColor (Flat)

+ (UIColor *)flatWhiteColor {
    return [UIColor colorWithRed:0.9274 green:0.9436 blue:0.95 alpha:1.0];
}

+ (UIColor *)flatBlackColor {
    return [UIColor colorWithRed:0.1674 green:0.1674 blue:0.1674 alpha:1.0];
}

+ (UIColor *)flatBlueColor {
    return [UIColor colorWithRed:0.3132 green:0.3974 blue:0.6365 alpha:1.0];
}

+ (UIColor *)flatRedColor {
    return [UIColor colorWithRed:0.9115 green:0.2994 blue:0.2335 alpha:1.0];
}

- (UIImage *)pixelImage {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(1, 1), NO, 0);
    
    [[self colorWithAlphaComponent:0.5] setFill];
    
    UIRectFillUsingBlendMode(CGRectMake(0, 0, 1, 1), kCGBlendModeNormal);
    
    UIImage *pixelImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return pixelImage;
}

@end
