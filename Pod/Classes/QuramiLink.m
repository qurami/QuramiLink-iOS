//
//  QuramiLink.m
//  QuramiLink
//
//  Created by Marco Musella on 05/10/15.
//  Copyright © 2015 Qurami. All rights reserved.
//

#import "QuramiLink.h"

static NSString *quramiAppBaseUrlString = @"quramiapp://";
static NSInteger officeLinkLength = 39;

@implementation QuramiLink

+ (void) openQuramiOfficeWithOfficeLink: (NSString *) officeLink error: (NSError **) error{
    
    
    if(!officeLink || officeLink.length != officeLinkLength){
        
        if(error){
            
            NSString *errorDescription;
            NSInteger errorCode;
            
            if(!officeLink || officeLink.length == 0){
                errorDescription = @"no office link provided.";
                errorCode = kQuramiLinkNoOfficeLinkError;
            }
            else{
                errorDescription = @"the officeLink provided is malformed.";
                errorCode = kQuramiLinkMalformedOfficeLinkError;
            }
            
            NSString *domain = @"com.qurami.iPhoneApp.QuramiLinkErrorDomain";
            NSDictionary *userInfo = @{ NSLocalizedDescriptionKey : errorDescription };
            
            *error = [NSError errorWithDomain:domain
                                                 code: errorCode
                                             userInfo:userInfo];
        }
        else{
            NSLog(@"QuramiLink Error: the officeLink passed in is nil or invalid, please check the office link again. For any further info contact tech@qurami.com");
        }
        
        return;
    }
    
    UIApplication *sharedApp = [UIApplication sharedApplication];
    NSURL *quramiBaseUrl = [NSURL URLWithString: quramiAppBaseUrlString];
    
    if([sharedApp canOpenURL: quramiBaseUrl]){
        NSURL *quramiOfficeUrl = [NSURL URLWithString:[NSString stringWithFormat:@"%@?officeLink=%@", quramiAppBaseUrlString,officeLink]];
        [sharedApp openURL: quramiOfficeUrl];
    }
    else{
        [sharedApp openURL:[NSURL URLWithString:@"https://itunes.apple.com/it/app/qurami/id470837979?mt=8"]];
    }
}

@end
