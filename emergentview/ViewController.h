//
//  ViewController.h
//  emergentview
//
//  Created by Miquel Alvarado on 30/05/13.
//
//

#import <UIKit/UIKit.h>
#import "EmergentViewController.h"

@interface ViewController : EmergentViewController
@property (weak, nonatomic) IBOutlet UIView *topPopUpView;
@property (weak, nonatomic) IBOutlet UIView *bottomPopUpView;
@property (weak, nonatomic) IBOutlet UIView *leftPopUpView;
@property (weak, nonatomic) IBOutlet UIView *rightPopUpView;

@property (weak, nonatomic) IBOutlet UIButton *topButton;
@property (weak, nonatomic) IBOutlet UIButton *bottomButton;
@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;

- (IBAction)topButton:(id)sender;
- (IBAction)bottomButton:(id)sender;
- (IBAction)leftButton:(id)sender;
- (IBAction)rightButton:(id)sender;

@end
