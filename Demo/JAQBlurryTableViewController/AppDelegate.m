//
//  AppDelegate.m
//  JAQBlurryTableViewController
//
//  Created by Javier Querol on 23/01/14.
//  Copyright (c) 2014 Javier Querol. All rights reserved.
//

#import "AppDelegate.h"
#import "TableViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	[[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	TableViewController *vc = [TableViewController new];
	self.window.rootViewController = vc;
	
	[self.window makeKeyAndVisible];
	return YES;
}

@end
