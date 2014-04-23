//
//  PDLocationViewController.m
//  WebViewer
//
//  Created by Koen Bok on 4/22/14.
//  Copyright (c) 2014 Podium. All rights reserved.
//

#import "PDLocationViewController.h"

@interface PDLocationViewController ()

@end

@implementation PDLocationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Location";
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [self.locationTextField becomeFirstResponder];
    
    NSString *url = [[NSUserDefaults standardUserDefaults] stringForKey:@"location"];
    
    self.locationTextField.text = url;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    if (!self.locationTextField.text.length)
        return NO;
    
    [textField resignFirstResponder];
    
    PDWebViewController *webViewController = [[PDWebViewController alloc] init];
    webViewController.urlToLoad = self.locationTextField.text;
    
    [self.navigationController pushViewController:webViewController animated:YES];
    
    [[NSUserDefaults standardUserDefaults] setObject:self.locationTextField.text forKey:@"location"];
    
    return YES;
}

@end
