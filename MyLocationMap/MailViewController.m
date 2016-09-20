//
//  MailViewController.m
//  MyLocationMap
//
//  Created by vignesh on 9/8/16.
//  Copyright © 2016 vignesh. All rights reserved.
//

#import "MailViewController.h"

@interface MailViewController ()

@end

@implementation MailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)sendMail:(id)sender{
    mailComposer = [[MFMailComposeViewController alloc]init];
    mailComposer.mailComposeDelegate = self;
    [mailComposer setSubject:@"Test mail"];
    [mailComposer setMessageBody:@"Testing message for the test mail" isHTML:NO];
     [self presentModalViewController:mailComposer animated:YES];
     }
     
#pragma mark - mail compose delegate
     -(void)mailComposeController:(MFMailComposeViewController *)controller
             didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
                 if (result) {
                     NSLog(@"Result : %d",result);
                 }
                 if (error) {
                     NSLog(@"Error : %@",error);
                 }
                 [self dismissModalViewControllerAnimated:YES];
                 
             }
@end
