//
//  PhoneValidationVCViewController.m
//  SearchPhnNumber
//
//  Created by Shariif on 11/13/16.
//  Copyright © 2016 Shariif. All rights reserved.
//

#import "ValidationVC.h"
#import "ValidationManager.h"



@interface ValidationVC ()

@end

@implementation ValidationVC

- (void)viewDidLoad {
    [super viewDidLoad];

    _textField.delegate = self;

    _lbNote.text = @"❗️This validation is only applicable for Bangladeshi cell phone number. By changing regular expression pattern you can use for your own validation.";
    
    [_lbNote setAdjustsFontSizeToFitWidth:YES];
    [_lbNote setNumberOfLines:3];
    _lbNote.textColor = [UIColor grayColor];
    _lbMessage.hidden = true;

    _textField.placeholder = _placeHolderText;
    _lbNote.hidden = _showHideNote;

    self.navigationItem.titleView = [self navigationTitleLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



-(UILabel*) navigationTitleLabel {
    
    CGRect frame = CGRectMake(0, 0, 200, 30);
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.font = [UIFont systemFontOfSize:15.0];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = _navigationTitleText;
    
    return label;
}



-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    NSString * textFieldString = [textField.text stringByReplacingCharactersInRange:range withString:string];

    if ([ValidationManager phoneNumberOrEmailValidation:textFieldString regexString:_regexString]) {
        
        _lbMessage.hidden = false;
        _textField.textColor = [UIColor colorWithRed:0.0/255.0 green:204.0/255.0 blue:102.0/255.0 alpha:1];
        _lbMessage.text = _message;
        _lbMessage.font = [UIFont systemFontOfSize:12.0];
        
    }
    else
    {
        _lbMessage.hidden = true;
        _textField.textColor = [UIColor blackColor];
    }
  
    return YES;
}





@end
