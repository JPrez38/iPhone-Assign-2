//
//  SiteViewController.h
//  Assignment2
//
//  Created by Jacob Preston on 2/27/13.
//  Copyright (c) 2013 Jacob Preston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SiteViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)textEntered:(UITextField *)sender;
- (IBAction)buttonPushed:(UIButton *)sender;

@end
