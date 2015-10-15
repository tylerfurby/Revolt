//
//  ViewController.h
//  Revolt
//
//  Created by Tyler Furreboe on 10/14/15.
//  Copyright © 2015 Furby Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) AVPlayerLayer *playerLayer;

@property (nonatomic, strong) MPMoviePlayerController *moviePlayer;

@end
