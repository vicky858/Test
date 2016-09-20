//
//  MediaViewController.h
//  MyLocationMap
//
//  Created by vignesh on 9/8/16.
//  Copyright © 2016 vignesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface MediaViewController : UIViewController
{
    AVAudioPlayer *audioPlayer;
    MPMoviePlayerViewController *moviePlayer;
    
}

- (IBAction)playVideo:(id)sender;
- (IBAction)playAudio:(id)sender;

@end
