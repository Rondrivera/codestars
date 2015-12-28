//
//  AboutViewController.h
//  TopCitiesApp
//
//  Created by Ronald Rivera on 9/23/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController
- (IBAction)closeWebView:(id)sender;

@property (nonatomic, weak)IBOutlet UIWebView *webView;


@property (weak, nonatomic)NSURL *webViewURL;
@property (weak, nonatomic)NSURLRequest *webViewRequest;
@property (strong, nonatomic)NSString *URLString;

@end
