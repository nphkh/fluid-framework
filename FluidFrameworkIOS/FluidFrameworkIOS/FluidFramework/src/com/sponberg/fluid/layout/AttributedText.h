//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/AttributedText.java
//

#ifndef _FFTAttributedText_H_
#define _FFTAttributedText_H_

@class FFTColor;
@class JavaUtilArrayList;

#import "JreEmulation.h"

@interface FFTAttributedText : NSObject {
 @public
  NSString *text_;
  JavaUtilArrayList *attributes_;
}

- (id)initWithNSString:(NSString *)text;

- (NSString *)getText;

- (JavaUtilArrayList *)getAttributes;

- (void)setTextWithNSString:(NSString *)text;

- (void)setAttributesWithJavaUtilArrayList:(JavaUtilArrayList *)attributes;

- (BOOL)isEqual:(id)o;

- (BOOL)canEqualWithId:(id)other;

- (NSUInteger)hash;

- (NSString *)description;

- (void)copyAllFieldsTo:(FFTAttributedText *)other;

@end

__attribute__((always_inline)) inline void FFTAttributedText_init() {}

J2OBJC_FIELD_SETTER(FFTAttributedText, text_, NSString *)
J2OBJC_FIELD_SETTER(FFTAttributedText, attributes_, JavaUtilArrayList *)

typedef FFTAttributedText ComSponbergFluidLayoutAttributedText;

@interface FFTAttributedText_Tag : NSObject {
 @public
  NSString *tag_;
  JavaUtilArrayList *ranges_;
}

- (id)initWithNSString:(NSString *)tag
               withInt:(int)startIndex;

- (void)setEndIndexWithInt:(int)index;

- (void)addStartIndexWithInt:(int)index;

- (void)copyAllFieldsTo:(FFTAttributedText_Tag *)other;

@end

__attribute__((always_inline)) inline void FFTAttributedText_Tag_init() {}

J2OBJC_FIELD_SETTER(FFTAttributedText_Tag, tag_, NSString *)
J2OBJC_FIELD_SETTER(FFTAttributedText_Tag, ranges_, JavaUtilArrayList *)

@interface FFTAttributedText_Tag_Range : NSObject {
 @public
  int startIndex_;
  int endIndex_;
}

- (id)initWithInt:(int)startIndex;

- (void)copyAllFieldsTo:(FFTAttributedText_Tag_Range *)other;

@end

__attribute__((always_inline)) inline void FFTAttributedText_Tag_Range_init() {}

@interface FFTAttributedText_Attribute : NSObject {
 @public
  BOOL bold_;
  BOOL italic_;
  BOOL underline_;
  FFTColor *backgroundColor_;
  FFTColor *color_;
  int startIndex_;
  int endIndex_;
  int cornerRadius_;
}

- (id)init;

- (BOOL)isBold;

- (BOOL)isItalic;

- (BOOL)isUnderline;

- (FFTColor *)getBackgroundColor;

- (FFTColor *)getColor;

- (int)getStartIndex;

- (int)getEndIndex;

- (int)getCornerRadius;

- (void)setBoldWithBoolean:(BOOL)bold;

- (void)setItalicWithBoolean:(BOOL)italic;

- (void)setUnderlineWithBoolean:(BOOL)underline;

- (void)setBackgroundColorWithFFTColor:(FFTColor *)backgroundColor;

- (void)setColorWithFFTColor:(FFTColor *)color;

- (void)setStartIndexWithInt:(int)startIndex;

- (void)setEndIndexWithInt:(int)endIndex;

- (void)setCornerRadiusWithInt:(int)cornerRadius;

- (BOOL)isEqual:(id)o;

- (BOOL)canEqualWithId:(id)other;

- (NSUInteger)hash;

- (NSString *)description;

- (void)copyAllFieldsTo:(FFTAttributedText_Attribute *)other;

@end

__attribute__((always_inline)) inline void FFTAttributedText_Attribute_init() {}

J2OBJC_FIELD_SETTER(FFTAttributedText_Attribute, backgroundColor_, FFTColor *)
J2OBJC_FIELD_SETTER(FFTAttributedText_Attribute, color_, FFTColor *)

#endif // _FFTAttributedText_H_
