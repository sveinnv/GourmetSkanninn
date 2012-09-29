//
//  YMScannerVCViewController.m
//  GourmetSkanninn
//
//  Created by Sveinn Vidarsson on 9/21/12.
//  Copyright (c) 2012 Ymir Mobile. All rights reserved.
//

#import "YMScannerVCViewController.h"

@interface YMScannerVCViewController ()

@end

@implementation YMScannerVCViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		scanner = [[YMScanner alloc] init];
		scanner.delegate = self;
		scanSound = [[YMScannerSound alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	needle.transform = CGAffineTransformMakeRotation(-M_PI_4*0.95);
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startScan:(id)sender {
	[scanner start];
	[scanSound startPlaying];
}
- (IBAction)stopScan:(id)sender {
	needle.transform = CGAffineTransformMakeRotation(-M_PI_4*0.95);
	[scanner stop];
	[scanSound stopPlaying];
	
}


- (void)scannerUpdatedResult:(double)scanResult {
	needle.transform = CGAffineTransformMakeRotation(-M_PI_4*0.95 + scanResult*M_PI_2*0.95);
	[scanSound updateFrequency:scanResult];
	
}

@end
