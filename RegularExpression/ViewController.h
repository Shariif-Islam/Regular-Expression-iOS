//
//  ViewController.h
//  SearchPhnNumber
//
//  Created by Shariif on 11/13/16.
//  Copyright © 2016 Shariif. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *lbTitle;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

