//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/initializer/LoggingInitializer.java
//

#ifndef _FFTLoggingInitializer_H_
#define _FFTLoggingInitializer_H_

@class FFTFluidApp;
@class IOSObjectArray;

#import "JreEmulation.h"
#include "com/sponberg/fluid/ApplicationInitializer.h"

@interface FFTLoggingInitializer : NSObject < FFTApplicationInitializer > {
}

- (void)initialize__WithFFTFluidApp:(FFTFluidApp *)app OBJC_METHOD_FAMILY_NONE;

- (IOSObjectArray *)getSupportedPlatforms;

- (id)init;

@end

__attribute__((always_inline)) inline void FFTLoggingInitializer_init() {}

typedef FFTLoggingInitializer ComSponbergFluidInitializerLoggingInitializer;

#endif // _FFTLoggingInitializer_H_
