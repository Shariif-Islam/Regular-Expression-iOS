//
//  ValidationManager.h
//  RegularExpression
//
//  Created by Shariif on 11/15/16.
//  Copyright © 2016 Shariif. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ValidationManager : NSObject

+(BOOL) phoneNumberOrEmailValidation : (NSString*)string regexString:(NSString*)regexString;

@end
