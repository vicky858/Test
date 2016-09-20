//
//  MailViewController.h
//  MyLocationMap
//
//  Created by vignesh on 9/8/16.
//  Copyright © 2016 vignesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>


@interface MailViewController : UIViewController<MFMailComposeViewControllerDelegate>
{
    MFMailComposeViewController *mailComposer;
}
- (IBAction)sendMail:(id)sender;

@end
