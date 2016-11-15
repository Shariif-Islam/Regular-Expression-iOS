//
//  ViewController.m
//  SearchPhnNumber
//
//  Created by Shariif on 11/13/16.
//  Copyright © 2016 Shariif. All rights reserved.
//

#import "ViewController.h"
#import "ValidationVC.h"

#define PHONE_NUMBER_REGEX "(88|[+]88)?01[15-9][0-9]{8}"
#define EMAIL_REGEX "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{3,3}"

@interface ViewController (){

    NSArray *arrayTitle;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _lbTitle.text = @"Regular Expression Examples";
    arrayTitle = [NSArray arrayWithObjects:@"Phone number validation",
             @"Email validation", nil];
    
    self.navigationItem.title = @"Home";

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [arrayTitle count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ValidationVC *vc = [sb instantiateViewControllerWithIdentifier:@"validation"];
    
    if ([[arrayTitle objectAtIndex:indexPath.row] isEqualToString:@"Phone number validation"]) {
        
        vc.placeHolderText = @"Enter a phone number";
        vc.message = @"✅Valid phone number";
        vc.regexString = @PHONE_NUMBER_REGEX;
        vc.showHideNote = false;
        
    } else {
        
        vc.placeHolderText = @"Enter an email address";
        vc.message = @"✅Valid email address";
        vc.regexString = @EMAIL_REGEX;
        vc.showHideNote = true;
    
    }
    
    vc.navigationTitleText = [arrayTitle objectAtIndex:indexPath.row];

    [[self navigationController ] pushViewController:vc animated:YES];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.font=[UIFont systemFontOfSize:15.0];
    cell.textLabel.text = [arrayTitle objectAtIndex:indexPath.row];
    [cell.textLabel sizeToFit];
    
    
    return cell;

}

@end
