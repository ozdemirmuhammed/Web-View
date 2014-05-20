//
//  ViewController.h
//  Web View
//
//  Created by Muhammed on 19.05.2014.
//  Copyright (c) 2014 Muhammed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)btnTwitter:(id)sender;
- (IBAction)btnAboutMe:(id)sender;
- (IBAction)btnGoogle:(id)sender;
- (IBAction)btnReload:(id)sender;
- (IBAction)btnStop:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
