//
//  RestConnectionAppDelegate.h
//  RestConnection
//
//  Created by Logan Cautrell on 10/4/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SearchResultsViewController;

@interface RestConnectionAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	
@private
	SearchResultsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

