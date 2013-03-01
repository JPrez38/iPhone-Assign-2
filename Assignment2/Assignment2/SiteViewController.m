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
    _login = [NSMutableDictionary dictionary];
    
    SiteValue *gmail = [SiteValue siteValueWithUsername:@"Hello" andPassword:@"Jacob"];
    SiteValue *nyu = [SiteValue siteValueWithUsername:@"JPREZ" andPassword:@"helloworld"];
    SiteValue *facebook = [SiteValue siteValueWithUsername:@"jacobo" andPassword:@"preston"];
    SiteValue *twitter = [SiteValue siteValueWithUsername:@"jprez" andPassword:@"password"];
    SiteValue *amazon = [SiteValue siteValueWithUsername:@"jac" andPassword:@"ob"];
    SiteValue *yahoo = [SiteValue siteValueWithUsername:@"packerfan" andPassword:@"bro"];
    SiteValue *tumblr = [SiteValue siteValueWithUsername:@"tumble" andPassword:@"around"];
    
    
    
    [_login setObject:gmail forKey:@"gmail"];
    [_login setObject:nyu forKey:@"nyu"];
    [_login setObject:facebook forKey:@"facebook"];
    [_login setObject:twitter forKey:@"twitter"];
    [_login setObject:amazon forKey:@"amazon"];
    [_login setObject:yahoo forKey:@"yahoo"];
    [_login setObject:tumblr forKey:@"tumblr"];
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
    _userName.text= [[_login objectForKey:@"amazon"] getUsername];
    _password.text= [[_login objectForKey:@"amazon"] getPassword];
    _webSite.text= [[_login objectForKey:@"amazon"] getWebsite];
    _count.text= [[_login objectForKey:@"amazon"] getCount];
}

- (IBAction)add:(UIButton *)sender {

    _password.text= [[_login objectForKey:@"amazon"] getUsername];
}

- (IBAction)backward:(UIButton *)sender {
    _userName.text= [[_login objectForKey:@"twitter"] getUsername];
    _password.text= [[_login objectForKey:@"twitter"] getPassword];
    _webSite.text= [[_login objectForKey:@"twitter"] getWebsite];
    _count.text= [[_login objectForKey:@"twitter"] getCount];
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
