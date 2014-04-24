//
//  PDWebViewController.m
//  WebViewer
//
//  Created by Koen Bok on 4/22/14.
//  Copyright (c) 2014 Podium. All rights reserved.
//

#import "PDWebViewController.h"

@interface PDWebViewController ()

@end

@implementation PDWebViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.webView = [[PDWebView alloc] initWithFrame:self.view.bounds];
    self.webView.delegate = self;
    
    [self.webView.subviews.lastObject setScrollEnabled:NO];
    
    
    [self.view addSubview:self.webView];

    
    
    if (self.urlToLoad)
        [self loadUrl:self.urlToLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

- (void)viewDidAppear:(BOOL)animated
{
    [[UIApplication sharedApplication] setIdleTimerDisabled:YES];
}

- (void)loadUrl:(NSString *)urlString
{
    
    if (![urlString hasPrefix:@"http://"])
        urlString = [NSString stringWithFormat:@"http://%@", urlString];
    
    NSURL *url = [NSURL URLWithString:urlString];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}


@end
