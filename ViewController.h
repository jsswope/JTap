//
//  ViewController.h
//  JTap
//
//  Created by Jeff Swope on 8/1/14.
//  Copyright (c) 2014 Jeff Swope. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate> {
    
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
}

-(IBAction)buttonPressed;

@end
