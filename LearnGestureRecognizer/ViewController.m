//
//  ViewController.m
//  LearnGestureRecognizer
//
//  Created by ammar falmban on 10/7/13.
//  Copyright (c) 2013 SDKaizen.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*=======================================
     *    Making the Tap Gesture Recongnizer
     ======================================== */
    
    // making Tab Gesture Recongnized by Code
    UITapGestureRecognizer *doubleTapGesture =
    // when recongized the gesture make go to doubleTapGesture method 
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doubleTapRecognized)];
   
    // the number of the tab
    [doubleTapGesture setNumberOfTapsRequired:2];
    
    // calling the doubleTapGesture method 
    [self.view addGestureRecognizer:doubleTapGesture];
    
    /*========================================
     *    Making the swipe Gesture Recongnizer
     ========================================= */
    
    // left swipe 
    UISwipeGestureRecognizer *swipeLeft =
    [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeRecognized:)];
    
    // set the Direction for the Swipe 
    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    
    // Add Gesture on the view or Recognizer it on the view 
    [self.view addGestureRecognizer:swipeLeft];
    
    // right swipe
    UISwipeGestureRecognizer *swipeRight =
    [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeRecognized:)];
    
   // set the Direction for the Swipe
    [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
    
    // Add Gesture on the view or Recognizer it on the view
    [self.view addGestureRecognizer:swipeRight];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    // making Tab Gesture Recongnized by GUI 
- (IBAction)singleTabRecognized:(id)sender {
    
    [[self dispalyLabel]setText:@"Single Tap "];
}
// When the user,s make double Tap 
-(void)doubleTapRecognized{
    
    [[self dispalyLabel]setText:@"Double tap"];
    
}
// When the user,s make swipe
-(void)swipeRecognized:(UISwipeGestureRecognizer *)swipe{
    
    if(swipe.direction == UISwipeGestureRecognizerDirectionLeft){
        [[self dispalyLabel]setText:@"swipe left"];
    }
    if(swipe.direction == UISwipeGestureRecognizerDirectionRight){
        [[self dispalyLabel]setText:@"swipe right"];
    }

}

@end
