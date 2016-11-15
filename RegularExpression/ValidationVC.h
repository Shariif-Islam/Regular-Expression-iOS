//
//  PhoneValidationVCViewController.h
//  SearchPhnNumber
//
//  Created by Shariif on 11/13/16.
//  Copyright © 2016 Shariif. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ValidationVC : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *lbMessage;
@property (weak, nonatomic) IBOutlet UILabel *lbNote;

@property (weak, nonatomic) NSString* navigationTitleText;
@property (weak, nonatomic) NSString* placeHolderText;
@property (weak, nonatomic) NSString* regexString;
@property (weak, nonatomic) NSString* message;
@property                   BOOL showHideNote;


@end
