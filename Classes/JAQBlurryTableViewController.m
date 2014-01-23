//
//  JAQViewController.m
//  MagicTableView
//
//  Created by Javier Querol on 03/01/14.
//  Copyright (c) 2014 Javier Querol. All rights reserved.
//

#import "JAQBlurryTableViewController.h"
#import "UIImage+ImageEffects.h"

@interface JAQBlurryTableViewController ()
@property (nonatomic, assign) CGRect cachedImageViewSize;
@property (nonatomic, strong) UIImageView *blurImageView;
@end

@implementation JAQBlurryTableViewController

- (void)configureBannerWithImage:(UIImage *)image height:(CGFloat)height {
	[self configureBannerWithImage:image height:height blurRadius:12 blurTintColor:[UIColor colorWithWhite:0 alpha:0.5] saturationFactor:1];
}

- (void)configureBannerWithImage:(UIImage *)image height:(CGFloat)height blurRadius:(CGFloat)blurRadius blurTintColor:(UIColor *)blurColor saturationFactor:(CGFloat)saturarion {
	self.titleImageView = [UIImageView new];
	self.titleImageView.frame = CGRectMake(0, 0, self.tableView.bounds.size.width, height);
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
	
	self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.bounds.size.width, height+30)];
	self.titleImageView.image = image;
	self.blurImageView.image = [self.titleImageView.image applyBlurWithRadius:blurRadius tintColor:blurColor saturationDeltaFactor:saturarion maskImage:nil];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
	CGFloat scrollOffset = scrollView.contentOffset.y;
    CGFloat newScale = 1 + ((scrollOffset * -1) / 280);
	self.titleImageView.alpha = (newScale-1)*2.5;
	self.contentView.alpha = 1-((newScale-1)*2.5f);
	
    CGFloat y = -scrollView.contentOffset.y;
    if (y > 0) {
        self.titleImageView.frame = CGRectMake(0, scrollView.contentOffset.y, self.cachedImageViewSize.size.width+y, self.cachedImageViewSize.size.height+y*1.15);
        self.titleImageView.center = CGPointMake(self.tableView.center.x, self.titleImageView.center.y);
		self.blurImageView.frame = self.titleImageView.frame;
    }
}

@end
