//
//  PDWebViewController.h
//  WebViewer
//
//  Created by Koen Bok on 4/22/14.
//  Copyright (c) 2014 Podium. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PDWebView.h"

@interface PDWebViewController : UIViewController <UIWebViewDelegate, UIGestureRecognizerDelegate>

@property NSString *urlToLoad;
@property PDWebView *webView;

- (void)loadUrl:(NSString *)url;

@end
