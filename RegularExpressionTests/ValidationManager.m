//
//  ValidationManager.m
//  RegularExpression
//
//  Created by Shariif on 11/15/16.
//  Copyright © 2016 Shariif. All rights reserved.
//

#import "ValidationManager.h"

@implementation ValidationManager


+(BOOL) phoneNumberOrEmailValidation : (NSString*) string regexString:(NSString*)regexString
{
    NSString *trimmedString = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSRange range = [trimmedString rangeOfString:regexString options:NSRegularExpressionSearch];
    
    if (range.location != NSNotFound && range.length == trimmedString.length) {
        
        if ([trimmedString substringWithRange:range] != nil) {
            return true;
        }
    }
    return false;
    
}



@end
