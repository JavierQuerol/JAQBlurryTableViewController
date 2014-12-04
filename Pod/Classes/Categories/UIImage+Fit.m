//
//  UIImage+Fit.m
//  JAQBlurryTableViewController
//
//  Created by Javier Querol on 4/12/14.
//  Copyright (c) 2014 Javier Querol. All rights reserved.
//

#import "UIImage+Fit.h"

@implementation UIImage (Fit)

- (UIImage *)jaq_adjustImageToWidth:(CGFloat)width {
	CGFloat newHeight= self.size.height*width/self.size.width;
	UIGraphicsBeginImageContextWithOptions(CGSizeMake(width, newHeight), NO, UIScreen.mainScreen.scale);
	[self drawInRect:CGRectMake(0, 0, width, newHeight)];
	UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	return newImage;
}

@end
