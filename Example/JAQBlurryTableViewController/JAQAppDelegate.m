//
//  JAQAppDelegate.m
//  JAQBlurryTableViewController
//
//  Created by CocoaPods on 12/04/2014.
//  Copyright (c) 2014 Javier Querol. All rights reserved.
//

#import "JAQAppDelegate.h"
#import "JAQViewController.h"

@implementation JAQAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	[[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	JAQViewController *vc = [JAQViewController new];
	self.window.rootViewController = vc;
	
	[self.window makeKeyAndVisible];
    return YES;
}

@end
