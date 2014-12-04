//
//  JAQViewController.m
//  MagicTableView
//
//  Created by Javier Querol on 03/01/14.
//  Copyright (c) 2014 Javier Querol. All rights reserved.
//

#import "JAQBlurryTableViewController.h"
#import "UIImage+ImageEffects.h"
#import "UIImage+Fit.h"

@interface JAQBlurryTableViewController ()
@property (nonatomic, assign) CGRect cachedImageViewSize;
@property (nonatomic, strong) UIImageView *blurImageView;
@end

@implementation JAQBlurryTableViewController

- (void)configureBannerWithImage:(UIImage *)image
{
	[self configureBannerWithImage:image
						blurRadius:12
					 blurTintColor:[UIColor colorWithWhite:0 alpha:0.5]
				  saturationFactor:1];
}

- (void)configureBannerWithImage:(UIImage *)image
					  blurRadius:(CGFloat)blurRadius
				   blurTintColor:(UIColor *)blurColor
				saturationFactor:(CGFloat)saturarion
{
	image = [image jaq_adjustImageToWidth:self.view.bounds.size.width];
	
	self.titleImageView = [UIImageView new];
	self.titleImageView.frame = CGRectMake(0, 0, self.tableView.bounds.size.width, image.size.height);
	self.cachedImageViewSize = self.titleImageView.frame;
	self.titleImageView.alpha = 0;
	self.titleImageView.contentMode = UIViewContentModeScaleAspectFill;
	[self.tableView addSubview:self.titleImageView];
	
	self.blurImageView = [UIImageView new];
	self.blurImageView.frame = self.titleImageView.bounds;
	self.blurImageView.contentMode = self.titleImageView.contentMode;
	[self.tableView insertSubview:self.blurImageView belowSubview:self.titleImageView];
	
	self.contentView = [UIView new];
	self.contentView.frame = self.titleImageView.bounds;
	[self.tableView addSubview:self.contentView];
	
	self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:self.cachedImageViewSize];
	self.titleImageView.image = image;
	self.blurImageView.image = [self.titleImageView.image applyBlurWithRadius:blurRadius
																	tintColor:blurColor
														saturationDeltaFactor:saturarion
																	maskImage:nil];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
	CGFloat scrollOffset = -scrollView.contentOffset.y;
    CGFloat newScale = 1 + scrollOffset / self.cachedImageViewSize.size.height;
	self.titleImageView.alpha = (newScale-1)*2;
	self.contentView.alpha = 1-self.titleImageView.alpha;
	
    if (scrollOffset > 0) {
        self.titleImageView.frame = CGRectMake(self.view.bounds.origin.x,
											   scrollView.contentOffset.y,
											   self.cachedImageViewSize.size.width+scrollOffset,
											   self.cachedImageViewSize.size.height+scrollOffset);
		
        self.titleImageView.center = CGPointMake(self.tableView.center.x, self.titleImageView.center.y);
		self.blurImageView.frame = self.titleImageView.frame;
    }
}

@end
