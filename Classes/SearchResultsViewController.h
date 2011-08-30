//
//  SearchResultsViewController.h
//  RestConnection
//
//  Created by Logan Cautrell on 10/4/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RestConnectionDelegate.h"

@class RestConnection;


@interface SearchResultsViewController : UIViewController <RestConnectionDelegate> {

	IBOutlet UITextView *textView;
	IBOutlet UIActivityIndicatorView *activityIndicator;
	IBOutlet UITextField *searchTextField;
	
@private 
	RestConnection *restConnection;
	
}

- (IBAction)searchTextEntered:(id)sender;

@end
