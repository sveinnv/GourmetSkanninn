//
//  YMScannerVCViewController.h
//  GourmetSkanninn
//
//  Created by Sveinn Vidarsson on 9/21/12.
//  Copyright (c) 2012 Ymir Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YMScanner.h"
#import "YMScannerSound.h"

@interface YMScannerVCViewController : UIViewController <YMScannerDelegate>{
	IBOutlet UIView *needle;
	YMScanner *scanner;
	YMScannerSound *scanSound;
}

- (IBAction)startScan:(id)sender;
- (IBAction)stopScan:(id)sender;

@end
