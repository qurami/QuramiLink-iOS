//
//  QMIViewController.h
//  QuramiLink
//
//  Created by Marco Musella on 10/05/2015.
//  Copyright (c) 2015 Qurami. All rights reserved.
//

@import UIKit;

@interface QMIViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *textField;

- (IBAction) officeLinkButtonPressed:(id)sender;

@end
