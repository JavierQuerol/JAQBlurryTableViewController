//
//  JAQViewController.m
//  JAQBlurryTableViewController
//
//  Created by Javier Querol on 12/04/2014.
//  Copyright (c) 2014 Javier Querol. All rights reserved.
//

#import "JAQViewController.h"

@implementation JAQViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
	[self configureBannerWithImage:[UIImage imageNamed:@"cats"]];
	
	UILabel *label = [UILabel new];
	label.frame = self.contentView.bounds;
	label.textAlignment = NSTextAlignmentCenter;
	label.text = @"JAQBlurryTableViewController Demo";
	label.textColor = [UIColor whiteColor];
	[self.contentView addSubview:label];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
	cell.textLabel.text = @"Title";
	return cell;
}

@end
