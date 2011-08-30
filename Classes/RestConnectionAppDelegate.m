//
//  RestConnectionAppDelegate.m
//  RestConnection
//
//  Created by Logan Cautrell on 10/4/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "RestConnectionAppDelegate.h"
#import "SearchResultsViewController.h";

@implementation RestConnectionAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

	viewController = 
		[[SearchResultsViewController alloc] initWithNibName:@"SearchResultsViewController" bundle:nil];
	[window addSubview:viewController.view];
	
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[viewController release];
    [window release];
    [super dealloc];
}


@end
