//
//  ViewController.m
//  JAQBlurryTableViewController
//
//  Created by Javier Querol on 23/01/14.
//  Copyright (c) 2014 Javier Querol. All rights reserved.
//

#import "TableViewController.h"

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
	[self configureBannerWithImage:[UIImage imageNamed:@"cats"]
							  text:@"Scroll up to unblur the image"
							height:200];
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
