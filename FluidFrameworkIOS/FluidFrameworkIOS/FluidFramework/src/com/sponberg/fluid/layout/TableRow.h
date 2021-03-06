//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/TableRow.java
//

#ifndef _FFTTableRow_H_
#define _FFTTableRow_H_

#import "JreEmulation.h"

@interface FFTTableRow : NSObject {
 @public
  long long int id__;
  NSString *layout_;
  NSString *key_;
  BOOL listenToDataModelChanges_;
}

- (NSString *)description;

- (long long int)getId;

- (NSString *)getLayout;

- (NSString *)getKey;

- (BOOL)isListenToDataModelChanges;

- (void)setIdWithLong:(long long int)id_;

- (void)setLayoutWithNSString:(NSString *)layout;

- (void)setKeyWithNSString:(NSString *)key;

- (void)setListenToDataModelChangesWithBoolean:(BOOL)listenToDataModelChanges;

- (id)init;

- (void)copyAllFieldsTo:(FFTTableRow *)other;

@end

__attribute__((always_inline)) inline void FFTTableRow_init() {}

J2OBJC_FIELD_SETTER(FFTTableRow, layout_, NSString *)
J2OBJC_FIELD_SETTER(FFTTableRow, key_, NSString *)

typedef FFTTableRow ComSponbergFluidLayoutTableRow;

#endif // _FFTTableRow_H_
