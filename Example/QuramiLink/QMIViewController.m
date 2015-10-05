//
//  QMIViewController.m
//  QuramiLink
//
//  Created by Marco Musella on 10/05/2015.
//  Copyright (c) 2015 Qurami. All rights reserved.
//

#import "QMIViewController.h"
#import "QuramiLink.h"

@interface QMIViewController ()

@end

@implementation QMIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) officeLinkButtonPressed:(id)sender{
    
    if(_textField.text && [_textField.text length] > 0){
        [QuramiLink openQuramiOfficeWithOfficeLink: _textField.text];
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"enter a valid office link" delegate:@"" cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
    
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField{

    [textField resignFirstResponder];
    
    return YES;
}

@end
