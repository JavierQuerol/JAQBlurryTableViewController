//
//
//  Created by Javier Querol on 03/01/14.
//  Copyright (c) 2014 Javier Querol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JAQBlurryTableViewController : UITableViewController
@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIImageView *titleImageView;
@property (nonatomic, assign) CGFloat height;

- (void)configureBannerWithImage:(UIImage *)image height:(CGFloat)height;
- (void)configureBannerWithImage:(UIImage *)image height:(CGFloat)height blurRadius:(CGFloat)blurRadius blurTintColor:(UIColor *)blurColor saturationFactor:(CGFloat)saturarion;

@end
