//
//  QuramiLink.m
//  QuramiLink
//
//  Created by Marco Musella on 05/10/15.
//  Copyright © 2015 Qurami. All rights reserved.
//

#import "QuramiLink.h"

static NSString *quramiAppBaseUrlString = @"quramiapp://";

@implementation QuramiLink

+ (void) openQuramiOfficeWithOfficeLink: (NSString *) officeLink{
    
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
