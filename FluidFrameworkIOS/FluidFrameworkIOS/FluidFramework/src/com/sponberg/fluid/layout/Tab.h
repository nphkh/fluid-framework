//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/Tab.java
//

#ifndef _FFTTab_H_
#define _FFTTab_H_

#import "JreEmulation.h"

@interface FFTTab : NSObject {
 @public
  NSString *tabId_;
  NSString *label_;
  NSString *image_;
  NSString *screenId_;
}

- (NSString *)description;

- (NSString *)getTabId;

- (NSString *)getLabel;

- (NSString *)getImage;

- (NSString *)getScreenId;

- (void)setTabIdWithNSString:(NSString *)tabId;

- (void)setLabelWithNSString:(NSString *)label;

- (void)setImageWithNSString:(NSString *)image;

- (void)setScreenIdWithNSString:(NSString *)screenId;

- (BOOL)isEqual:(id)o;

- (BOOL)canEqualWithId:(id)other;

- (NSUInteger)hash;

- (id)init;

- (void)copyAllFieldsTo:(FFTTab *)other;

@end

__attribute__((always_inline)) inline void FFTTab_init() {}

J2OBJC_FIELD_SETTER(FFTTab, tabId_, NSString *)
J2OBJC_FIELD_SETTER(FFTTab, label_, NSString *)
J2OBJC_FIELD_SETTER(FFTTab, image_, NSString *)
J2OBJC_FIELD_SETTER(FFTTab, screenId_, NSString *)

typedef FFTTab ComSponbergFluidLayoutTab;

#endif // _FFTTab_H_
