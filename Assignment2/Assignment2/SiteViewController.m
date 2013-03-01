//
//  SiteViewController.m
//  Assignment2
//
//  Created by Jacob Preston on 2/27/13.
//  Copyright (c) 2013 Jacob Preston. All rights reserved.
//

#import "SiteViewController.h"
#import "SiteValue.h"

@interface SiteViewController ()
    

@end

@implementation SiteViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    _login = [[NSMutableArray alloc] init];
    
    SiteValue *gmail = [SiteValue siteValueWithUsername:@"Hello" andPassword:@"Jacob" andWebsite:@"gmail"];
    SiteValue *nyu = [SiteValue siteValueWithUsername:@"JPREZ" andPassword:@"helloworld" andWebsite:@"nyu"];
    SiteValue *facebook = [SiteValue siteValueWithUsername:@"jacobo" andPassword:@"preston" andWebsite:@"facebook"];
    SiteValue *twitter = [SiteValue siteValueWithUsername:@"jprez" andPassword:@"password" andWebsite:@"twitter"];
    SiteValue *amazon = [SiteValue siteValueWithUsername:@"jac" andPassword:@"ob" andWebsite:@"amazon"];
    SiteValue *yahoo = [SiteValue siteValueWithUsername:@"packerfan" andPassword:@"bro" andWebsite:@"yahoo"];
    SiteValue *tumblr = [SiteValue siteValueWithUsername:@"tumble" andPassword:@"around" andWebsite:@"tumblr"];
    
    
    
    [_login addObject:gmail];
    [_login addObject:nyu];
    [_login addObject:facebook];
    [_login addObject:twitter];
    [_login addObject:amazon];
    [_login addObject:yahoo];
    [_login addObject:tumblr];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
- (IBAction)textEntered:(UITextField *)sender {
}

- (IBAction)buttonPushed:(UIButton *)sender {
    NSString *title = [sender titleForState:UIControlStateNormal];
    NSString *plainText = [NSString stringWithFormat:@"%@",title];
    
    NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc]
                                             initWithString:plainText];
    
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont boldSystemFontOfSize:_textField.font.pointSize]
                                 };
    NSRange nameRange = [plainText rangeOfString:title];
    
    [styledText setAttributes:attributes range:nameRange];
    _textField.attributedText = styledText;
}
 */
- (IBAction)textEntered:(UITextField *)sender {
}

- (IBAction)buttonPushed:(UIButton *)sender {
}

- (IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}

- (IBAction)incrementCount:(UIButton *)sender {
    int count = [_count.text intValue];
    count=count+1;
    _count.text=[NSString stringWithFormat:@"%d",count];
}

- (IBAction)forward:(UIButton *)sender {
    _userName.text= [[_login objectAtIndex:1]  getUsername];
    _password.text= [[_login objectAtIndex:1]  getPassword];
    _webSite.text= [[_login objectAtIndex:1]  getWebsite];
    _count.text= [[_login objectAtIndex:1] getCount];
}

- (IBAction)add:(UIButton *)sender {

    _password.text= [[_login objectAtIndex:1] getUsername];
}

- (IBAction)backward:(UIButton *)sender {
    _userName.text= [[_login objectAtIndex:0] getUsername];
    _password.text= [[_login objectAtIndex:0] getPassword];
    _webSite.text= [[_login objectAtIndex:0] getWebsite];
    _count.text= [[_login objectAtIndex:0] getCount];
}

- (IBAction)scroll:(UISlider *)sender {
}
- (IBAction)backgroundTap:(id)sender {
    [self.webSite resignFirstResponder];
    [self.userName resignFirstResponder];
    [self.password resignFirstResponder];
    [self.count resignFirstResponder];
}
@end
