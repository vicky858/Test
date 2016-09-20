//
//  MediaViewController.m
//  MyLocationMap
//
//  Created by vignesh on 9/8/16.
//  Copyright © 2016 vignesh. All rights reserved.
//

#import "MediaViewController.h"



@interface MediaViewController ()

@end

@implementation MediaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)playVideo:(id)sender {
    NSString *path = [[NSBundle mainBundle]pathForResource:
                      @"videoTest" ofType:@"mov"];
    moviePlayer = [[MPMoviePlayerViewController alloc]initWithContentURL:[NSURL fileURLWithPath:path]];
    [self presentModalViewController:moviePlayer animated:NO];
}

- (IBAction)playAudio:(id)sender {
    NSString *path = [[NSBundle mainBundle]pathForResource:@"audioTest" ofType:@"mp3"];
    audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    [audioPlayer play];
}
@end














