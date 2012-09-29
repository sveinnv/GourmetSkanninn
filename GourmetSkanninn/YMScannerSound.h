//
//  YMScannerSound.h
//  SuperScanner
//
//  Created by Sveinn Vidarsson on 9/21/12.
//  Copyright (c) 2012 Ymir Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioUnit/AudioUnit.h>

@interface YMScannerSound : NSObject {
	AudioComponentInstance toneUnit;
@public
	double frequency;
	double sampleRate;
	double theta;
	
}

- (id)init;
- (void)startPlaying;
- (void)stopPlaying;
- (void)updateFrequency:(double)newFrequency;


@end
