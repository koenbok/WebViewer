//
//  PDWebView.m
//  WebViewer
//
//  Created by Koen Bok on 4/22/14.
//  Copyright (c) 2014 Podium. All rights reserved.
//

#import "PDWebView.h"

@implementation PDWebView

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}


@end
