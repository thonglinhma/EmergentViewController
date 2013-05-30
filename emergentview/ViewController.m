//
//  ViewController.m
//  emergentview
//
//  Created by Miquel Alvarado on 30/05/13.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize leftButton, rightButton, topButton, bottomButton;
@synthesize leftPopUpView, rightPopUpView, topPopUpView, bottomPopUpView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initializeViewPosition:topPopUpView position:0];
    [self initializeViewPosition:bottomPopUpView position:1];
    [self initializeViewPosition:leftPopUpView position:2];
    [self initializeViewPosition:rightPopUpView position:3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)topButton:(id)sender {
    [self togglePopUp:topPopUpView position:0];
}

- (IBAction)bottomButton:(id)sender {
    [self togglePopUp:bottomPopUpView position:1];
}

- (IBAction)leftButton:(id)sender {
    [self togglePopUp:leftPopUpView position:2];
}

- (IBAction)rightButton:(id)sender {
    [self togglePopUp:rightPopUpView position:3];
}
@end
