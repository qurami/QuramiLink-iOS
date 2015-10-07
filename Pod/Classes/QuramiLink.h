//
//  QuramiLink.h
//  QuramiLink
//
//  Created by Marco Musella on 05/10/15.
//  Copyright © 2015 Qurami. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum QuramiLinkError{
    kQuramiLinkNoOfficeLinkError = 1001,
    kQuramiLinkMalformedOfficeLinkError
}QuramiLinkError;

@interface QuramiLink : NSObject

+ (void) openQuramiOfficeWithOfficeLink: (NSString *) officeLink error: (NSError **) error;

@end
