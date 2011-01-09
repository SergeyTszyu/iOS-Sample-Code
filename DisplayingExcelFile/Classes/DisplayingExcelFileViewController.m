//
//  DisplayingExcelFileViewController.m
//  DisplayingExcelFile
//
//  Created by Hiroshi Hashiguchi on 10/12/31.
//  Copyright 2010 . All rights reserved.
//

#import "DisplayingExcelFileViewController.h"

@implementation DisplayingExcelFileViewController

@synthesize webView = webView_;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

- (IBAction)load:(id)sender
{
	NSURL* url = [[NSBundle mainBundle] URLForResource:@"sample"
										 withExtension:@"xls"];
	NSURLRequest* req = [NSURLRequest requestWithURL:url];
	
	[self.webView loadRequest:req];
}

- (IBAction)load2:(id)sender
{
	NSURL* url = [[NSBundle mainBundle] URLForResource:@"sample2"
										 withExtension:@"ppt"];
	NSURLRequest* req = [NSURLRequest requestWithURL:url];
	
	[self.webView loadRequest:req];	
}

- (IBAction)load3:(id)sender
{
	NSURL* url = [[NSBundle mainBundle] URLForResource:@"sample3"
										 withExtension:@"doc"];
	NSURLRequest* req = [NSURLRequest requestWithURL:url];
	
	[self.webView loadRequest:req];	
	
}

- (IBAction)load4:(id)sender
{
	NSURL* url = [[NSBundle mainBundle] URLForResource:@"sample4"
										 withExtension:@"rtfd.zip"];
	NSURLRequest* req = [NSURLRequest requestWithURL:url];
	
	[self.webView loadRequest:req];	
	
}
- (IBAction)load5:(id)sender
{
	NSURL* url = [[NSBundle mainBundle] URLForResource:@"sample"
										 withExtension:@"pdf"];
	NSURLRequest* req = [NSURLRequest requestWithURL:url];
	
	[self.webView loadRequest:req];	
}

@end