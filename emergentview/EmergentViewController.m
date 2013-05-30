//
//  ViewController.m
//  emergentview
//
//  Created by Miquel Alvarado on 30/05/13.
//
//  Copyright (C) 2013 Miquel Alvarado

//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,
//  modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
//  Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
//  WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
//  OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "EmergentViewController.h"

@interface EmergentViewController ()

@end

@implementation EmergentViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)initializeViewPosition:(UIView*)view position:(int)position {
    CGRect frame = view.frame;
    switch(position) {
        case 0: // appears from top
            frame.origin.x = 0;
            frame.origin.y = 0 - frame.size.height;
            break;
        case 1: // appears from bottom
            frame.origin.x = 0;
            frame.origin.y = [[UIScreen mainScreen] bounds].size.height;
            break;
        case 2: // appears from left
            frame.origin.x = 0 - frame.size.width;
            frame.origin.y = 0;
            break;
        case 3: // appears from right
            frame.origin.x = [[UIScreen mainScreen] bounds].size.width;
            frame.origin.y = 0;
            break;
        default: // ?
            break;
    }
    view.frame = frame;
}

- (void)togglePopUp:(UIView *)view position:(int)position {
    if(view.tag == 0) {
        switch(position) {
            case 0: // appears from top
            {
                view.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2, 0 - view.frame.size.height/2);
                [UIView animateWithDuration:animation_speed animations:^{view.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2, view.frame.size.height/2);}];
            }
            break;
            case 1: // appears from bottom
            {
                view.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2, [[UIScreen mainScreen] bounds].size.height + view.frame.size.height/2);
                [UIView animateWithDuration:animation_speed animations:^{view.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2, [[UIScreen mainScreen] bounds].size.height - view.frame.size.height/2);}];
            }
            break;
            case 2: // appears from left
            {
                view.center = CGPointMake(0 - view.frame.size.width/2, [[UIScreen mainScreen] bounds].size.height/2);
                [UIView animateWithDuration:animation_speed animations:^{view.center = CGPointMake(0 + view.frame.size.width/2, [[UIScreen mainScreen] bounds].size.height/2);}];
            }
            break;
            case 3: // appears from right
            {
                view.center = CGPointMake([[UIScreen mainScreen] bounds].size.width + view.frame.size.width/2, [[UIScreen mainScreen] bounds].size.height/2);
                [UIView animateWithDuration:animation_speed animations:^{view.center = CGPointMake([[UIScreen mainScreen] bounds].size.width - view.frame.size.width/2, [[UIScreen mainScreen] bounds].size.height/2);}];
            }
            break;
            default: // ?
            break;
        }
        view.tag = 1;
    } else {
        switch(position) {
            case 0: // appears from top
            {
                view.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2, view.frame.size.height/2);
                [UIView animateWithDuration:animation_speed animations:^{view.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2, 0 - view.frame.size.height/2);}];
            }
                break;
            case 1: // appears from bottom
            {
                view.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2, [[UIScreen mainScreen] bounds].size.height - view.frame.size.height/2);
                [UIView animateWithDuration:animation_speed animations:^{view.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2, [[UIScreen mainScreen] bounds].size.height + view.frame.size.height/2);}];
            }
                break;
            case 2: // appears from left
            {
                view.center = CGPointMake(0 + view.frame.size.width/2, [[UIScreen mainScreen] bounds].size.height/2);
                [UIView animateWithDuration:animation_speed animations:^{view.center = CGPointMake(0 - view.frame.size.width/2, [[UIScreen mainScreen] bounds].size.height/2);}];
            }
                break;
            case 3: // appears from right
            {
                view.center = CGPointMake([[UIScreen mainScreen] bounds].size.width - view.frame.size.width/2, [[UIScreen mainScreen] bounds].size.height/2);
                [UIView animateWithDuration:animation_speed animations:^{view.center = CGPointMake([[UIScreen mainScreen] bounds].size.width + view.frame.size.width/2, [[UIScreen mainScreen] bounds].size.height/2);}];
            }
                break;
            default: // ?
                break;
        }
        view.tag = 0;
    }
}

@end
