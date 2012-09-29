//
//  YMScanner.h
//
//  Created by Sveinn Vidarsson on 9/18/12.
//  Copyright (c) 2012 Ymir Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol YMScannerDelegate <NSObject>

- (void)scannerUpdatedResult:(double)scanResult;

@end

@interface YMScanner : NSObject <UIAccelerometerDelegate> {
	UIAcceleration *initialAcceleration;
}
@property (unsafe_unretained)id <YMScannerDelegate>delegate;

- (void)start;
- (void)stop;
@end
