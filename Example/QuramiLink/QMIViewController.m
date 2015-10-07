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
    
        NSError *error;
        
        [QuramiLink openQuramiOfficeWithOfficeLink: _textField.text error:&error];

    if (error) {
        
        NSString *alertBody;
        if(error.code == kQuramiLinkNoOfficeLinkError){
            alertBody = @"enter an office link";
        }
        else if (error.code == kQuramiLinkMalformedOfficeLinkError){
            alertBody = @"enter a valid office link";
        }
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Warning" message: alertBody delegate:@"" cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
    
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField{

    [textField resignFirstResponder];
    
    return YES;
}

@end
