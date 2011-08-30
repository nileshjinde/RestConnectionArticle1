//
//  SearchResultsViewController.m
//  RestConnection
//
//  Created by Logan Cautrell on 10/4/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "SearchResultsViewController.h"
#import "RestConnection.h"

@interface SearchResultsViewController(private)
			
- (NSString *)getCellTextAtIndexPath:(NSIndexPath *)indexPath;
- (void)performSearchForText:(NSString *)searchText;

@end


@implementation SearchResultsViewController


#pragma mark Setup and Teardown Methods

- (void)viewDidLoad {
	[super viewDidLoad];
	
	restConnection = [RestConnection new];
	/*restConnection.baseURLString = @"http://ajax.googleapis.com/ajax/services/search/";*/
    restConnection.baseURLString = @"http://mobishare.weboapps.com";
	restConnection.delegate = self;
}

- (void)dealloc {
	[restConnection release];
    [super dealloc];
}


#pragma mark RestConnectionDelegate

- (void)willSendRequest:(NSURLRequest *)request
{
	[activityIndicator startAnimating];
}

- (void)didReceiveResponse:(NSURLResponse *)response
{
	NSLog(@"didReceiveResponse: %@", response);
}

- (void)finishedReceivingData:(NSData *)data
{
	NSLog(@"finishedReceivingData: %@", [restConnection stringData]);
	[activityIndicator stopAnimating];
	textView.text = [restConnection stringData];
}

#pragma mark Action Methods

- (IBAction)searchTextEntered:(id)sender
{
	[searchTextField resignFirstResponder];
	[self performSearchForText:searchTextField.text];
}

#pragma mark Text Field Delegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[textField resignFirstResponder];
	return YES;
}


#pragma mark Private Methods

- (void)performSearchForText:(NSString *)searchText
{
	NSString *text = 
		[searchText stringByAddingPercentEscapesUsingEncoding:
		 NSASCIIStringEncoding];

    //---------------------for get request------------------------------------------------------------------------//
	//NSString *urlString = [NSString stringWithFormat:@"/users/forgot_password?email=nilesh@weboniselab.com&phone=9764901169"];
   //[restConnection performRequestGET:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    //------------------------------------------------------------------------------------------------------------------
    
    //---------------------------------------------------for post request-------------------------------------------------------
    
    NSString *urlString = [NSString stringWithFormat:@"/users/login"];
    NSString *postData = [[NSString alloc] initWithFormat:@"email=nilesh@weboniselab.com&password=nilesh"];
    [restConnection performRequestPOST:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]] : postData];
    //----------------------------------------------------------------------------------------------------------------------
	
}

@end







