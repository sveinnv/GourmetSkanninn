//
//  YMScanner.m
//
//  Created by Sveinn Vidarsson on 9/18/12.
//  Copyright (c) 2012 Ymir Mobile. All rights reserved.
//

#import "YMScanner.h"

@implementation YMScanner
@synthesize delegate;

- (id)init {
	self = [super init];
	if (self) {
//		[[UIAccelerometer sharedAccelerometer] setUpdateInterval:1];
	}
	return self;
}

- (void)start {
	initialAcceleration = nil;
	[[UIAccelerometer sharedAccelerometer] setDelegate:self];
}

- (void)stop {
	[[UIAccelerometer sharedAccelerometer] setDelegate:nil];
}


- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration {
//	NSLog(@"did accelerate");
	if (initialAcceleration == nil) {
		initialAcceleration = acceleration;
		return;
	}
	NSLog(@"%f", fabs(acceleration.y - initialAcceleration.y));
	float scanResult;
	scanResult = fabs(acceleration.y-initialAcceleration.y)*4;
	
	
	[delegate scannerUpdatedResult:MIN(1, scanResult)];
}

@end
