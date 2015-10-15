//
//  SignUp.m
//  Revolt
//
//  Created by Tyler Furreboe on 10/15/15.
//  Copyright © 2015 Furby Studios. All rights reserved.
//

#import "SignUp.h"

@interface SignUp ()

@property (nonatomic, weak) IBOutlet UITextField *username;

@property (nonatomic, weak) IBOutlet UITextField *password;

@end

@implementation SignUp

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _username.layer.sublayerTransform = CATransform3DMakeTranslation(7, 0, 0);
    _password.layer.sublayerTransform = CATransform3DMakeTranslation(7, 0, 0);
    [self.username setValue:[UIColor whiteColor]
                    forKeyPath:@"_placeholderLabel.textColor"];
    [self.password setValue:[UIColor whiteColor]
                    forKeyPath:@"_placeholderLabel.textColor"];
    
    // Load the video from the app bundle.
    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"bulb" withExtension:@"mov"];
    
    // Create and configure the movie player.
    self.moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:videoURL];
    
    self.moviePlayer.controlStyle = MPMovieControlStyleNone;
    self.moviePlayer.scalingMode = MPMovieScalingModeAspectFill;
    
    self.moviePlayer.view.frame = self.view.frame;
    [self.view insertSubview:self.moviePlayer.view atIndex:0];
    
    [self.moviePlayer play];
    
    // Loop video.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loopVideo) name:MPMoviePlayerPlaybackDidFinishNotification object:self.moviePlayer];
}

- (void)loopVideo {
    [self.moviePlayer play];
}

-(IBAction) changeViewController:(id)sender
{
    MainInterface *viewController = [[MainInterface alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
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

@end
