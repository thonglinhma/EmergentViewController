//
//  EmergentView.h
//  emergentview
//
//  Created by development.cat on 30/05/13.
//
//

#import <UIKit/UIKit.h>

#define x_ini_iPhone 160
#define y_ini_iPhone 480
#define y_ini_iPhone5 568

#define x_ini_iPad 384
#define y_ini_iPad 1024

#define x_fin_iPhone 160
#define y_fin_iPhone 355
#define y_fin_iPhone5 423

#define x_fin_iPad 384
#define y_fin_iPad 723

@interface EmergentView : UIView

- (IBAction)makePopUpAppear:(id)sender;
- (IBAction)makePopUpDisappear:(id)sender;

@end
