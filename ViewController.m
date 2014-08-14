//
//  ViewController.m
//  JTap
//
//  Created by Jeff Swope on 8/1/14.
//  Copyright (c) 2014 Jeff Swope. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
	[self setupGame];
}

-(void)setupGame {
    
    seconds = 30;
    count = 0;
    
    timerLabel.text = [NSString stringWithFormat:@"Time %i", seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n %i", count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}

-(void)subtractTime {
    
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    
    if (seconds == 0) {
        [timer invalidate];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up Jaden!"
            message:[NSString stringWithFormat:@"Jaden you scored %i points", count]
                                            delegate:self
                                            cancelButtonTitle:@"Play Again?"
                                            otherButtonTitles:nil];
        
                [alert show];
        
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self setupGame];
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonPressed {
    count++;
    
    scoreLabel.text = [NSString stringWithFormat:@"Score\n %i", count];
    
}
@end
