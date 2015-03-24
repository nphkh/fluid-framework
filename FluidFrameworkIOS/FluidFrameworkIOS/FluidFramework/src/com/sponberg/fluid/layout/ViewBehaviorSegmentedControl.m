//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/ViewBehaviorSegmentedControl.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/sponberg/fluid/layout/Color.h"
#include "com/sponberg/fluid/layout/ViewBehavior.h"
#include "com/sponberg/fluid/layout/ViewBehaviorSegmentedControl.h"
#include "com/sponberg/fluid/util/KeyValueList.h"
#include "java/lang/Double.h"
#include "java/lang/RuntimeException.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"

@implementation FFTViewBehaviorSegmentedControl

- (id)initWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  if (self = [super initWithNSString:FFTViewBehavior_get_segmentedControl_() withFFTKeyValueList:properties]) {
    id<JavaUtilList> optionsList = [((id<FFTKeyValueList>) nil_chk(properties)) getValuesWithNSString:@"options"];
    if (optionsList == nil || [optionsList size] == 0) {
      @throw [[JavaLangRuntimeException alloc] initWithNSString:@"options must be specified for segmented-control"];
    }
    options_ = [optionsList toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[((id<JavaUtilList>) nil_chk(optionsList)) size] type:[IOSClass classWithClass:[NSString class]]]];
    if ([properties containsWithNSString:@"text-and-line-color"]) {
      FFTColor *color = [self getColorPropertyWithNSString:@"text-and-line-color" withFFTColor:nil withFFTKeyValueList:properties];
      self->textColor_ = color;
      self->lineColor_ = color;
    }
    else {
      self->textColor_ = [self getColorPropertyWithNSString:@"text-color" withFFTColor:nil withFFTKeyValueList:properties];
      self->lineColor_ = [self getColorPropertyWithNSString:@"line-color" withFFTColor:nil withFFTKeyValueList:properties];
    }
    self->selectedTextColor_ = [self getColorPropertyWithNSString:@"selected-text-color" withFFTColor:nil withFFTKeyValueList:properties];
    self->backgroundColor_ = [self getColorPropertyWithNSString:@"background-color" withFFTColor:[[FFTColor alloc] initWithInt:0 withInt:0 withInt:0 withInt:0] withFFTKeyValueList:properties];
    self->selectedBackgroundColor_ = [self getColorPropertyWithNSString:@"selected-background-color" withFFTColor:lineColor_ withFFTKeyValueList:properties];
    self->selectedIndexKey_ = [FFTViewBehavior getStringPropertyWithNSString:@"selected-index" withNSString:nil withFFTKeyValueList:properties];
    self->androidPadding_ = [FFTViewBehavior getSizePropertyWithNSString:@"android-padding" withNSString:@"0" withFFTKeyValueList:properties];
    self->fontSize_ = [FFTViewBehavior getFontSizePropertyWithNSString:@"font-size" withJavaLangDouble:nil withFFTKeyValueList:properties];
  }
  return self;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"ViewBehaviorSegmentedControl(options=%@, textColor=%@, lineColor=%@, selectedTextColor=%@, backgroundColor=%@, selectedBackgroundColor=%@, selectedIndexKey=%@, androidPadding=%@, fontSize=%@)", [JavaUtilArrays deepToStringWithNSObjectArray:[self getOptions]], [self getTextColor], [self getLineColor], [self getSelectedTextColor], [self getBackgroundColor], [self getSelectedBackgroundColor], [self getSelectedIndexKey], [self getAndroidPadding], [self getFontSize]];
}

- (IOSObjectArray *)getOptions {
  return self->options_;
}

- (FFTColor *)getTextColor {
  return self->textColor_;
}

- (FFTColor *)getLineColor {
  return self->lineColor_;
}

- (FFTColor *)getSelectedTextColor {
  return self->selectedTextColor_;
}

- (FFTColor *)getBackgroundColor {
  return self->backgroundColor_;
}

- (FFTColor *)getSelectedBackgroundColor {
  return self->selectedBackgroundColor_;
}

- (NSString *)getSelectedIndexKey {
  return self->selectedIndexKey_;
}

- (JavaLangDouble *)getAndroidPadding {
  return self->androidPadding_;
}

- (JavaLangDouble *)getFontSize {
  return self->fontSize_;
}

- (void)setOptionsWithNSStringArray:(IOSObjectArray *)options {
  self->options_ = options;
}

- (void)setTextColorWithFFTColor:(FFTColor *)textColor {
  self->textColor_ = textColor;
}

- (void)setLineColorWithFFTColor:(FFTColor *)lineColor {
  self->lineColor_ = lineColor;
}

- (void)setSelectedTextColorWithFFTColor:(FFTColor *)selectedTextColor {
  self->selectedTextColor_ = selectedTextColor;
}

- (void)setBackgroundColorWithFFTColor:(FFTColor *)backgroundColor {
  self->backgroundColor_ = backgroundColor;
}

- (void)setSelectedBackgroundColorWithFFTColor:(FFTColor *)selectedBackgroundColor {
  self->selectedBackgroundColor_ = selectedBackgroundColor;
}

- (void)setSelectedIndexKeyWithNSString:(NSString *)selectedIndexKey {
  self->selectedIndexKey_ = selectedIndexKey;
}

- (void)setAndroidPaddingWithJavaLangDouble:(JavaLangDouble *)androidPadding {
  self->androidPadding_ = androidPadding;
}

- (void)setFontSizeWithJavaLangDouble:(JavaLangDouble *)fontSize {
  self->fontSize_ = fontSize;
}

- (void)copyAllFieldsTo:(FFTViewBehaviorSegmentedControl *)other {
  [super copyAllFieldsTo:other];
  other->androidPadding_ = androidPadding_;
  other->backgroundColor_ = backgroundColor_;
  other->fontSize_ = fontSize_;
  other->lineColor_ = lineColor_;
  other->options_ = options_;
  other->selectedBackgroundColor_ = selectedBackgroundColor_;
  other->selectedIndexKey_ = selectedIndexKey_;
  other->selectedTextColor_ = selectedTextColor_;
  other->textColor_ = textColor_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithFFTKeyValueList:", "ViewBehaviorSegmentedControl", NULL, 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "getOptions", NULL, "[Ljava.lang.String;", 0x1, NULL },
    { "getTextColor", NULL, "Lcom.sponberg.fluid.layout.Color;", 0x1, NULL },
    { "getLineColor", NULL, "Lcom.sponberg.fluid.layout.Color;", 0x1, NULL },
    { "getSelectedTextColor", NULL, "Lcom.sponberg.fluid.layout.Color;", 0x1, NULL },
    { "getBackgroundColor", NULL, "Lcom.sponberg.fluid.layout.Color;", 0x1, NULL },
    { "getSelectedBackgroundColor", NULL, "Lcom.sponberg.fluid.layout.Color;", 0x1, NULL },
    { "getSelectedIndexKey", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getAndroidPadding", NULL, "Ljava.lang.Double;", 0x1, NULL },
    { "getFontSize", NULL, "Ljava.lang.Double;", 0x1, NULL },
    { "setOptionsWithNSStringArray:", "setOptions", "V", 0x1, NULL },
    { "setTextColorWithFFTColor:", "setTextColor", "V", 0x1, NULL },
    { "setLineColorWithFFTColor:", "setLineColor", "V", 0x1, NULL },
    { "setSelectedTextColorWithFFTColor:", "setSelectedTextColor", "V", 0x1, NULL },
    { "setBackgroundColorWithFFTColor:", "setBackgroundColor", "V", 0x1, NULL },
    { "setSelectedBackgroundColorWithFFTColor:", "setSelectedBackgroundColor", "V", 0x1, NULL },
    { "setSelectedIndexKeyWithNSString:", "setSelectedIndexKey", "V", 0x1, NULL },
    { "setAndroidPaddingWithJavaLangDouble:", "setAndroidPadding", "V", 0x1, NULL },
    { "setFontSizeWithJavaLangDouble:", "setFontSize", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "options_", NULL, 0x2, "[Ljava.lang.String;", NULL,  },
    { "textColor_", NULL, 0x2, "Lcom.sponberg.fluid.layout.Color;", NULL,  },
    { "lineColor_", NULL, 0x2, "Lcom.sponberg.fluid.layout.Color;", NULL,  },
    { "selectedTextColor_", NULL, 0x2, "Lcom.sponberg.fluid.layout.Color;", NULL,  },
    { "backgroundColor_", NULL, 0x2, "Lcom.sponberg.fluid.layout.Color;", NULL,  },
    { "selectedBackgroundColor_", NULL, 0x2, "Lcom.sponberg.fluid.layout.Color;", NULL,  },
    { "selectedIndexKey_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "androidPadding_", NULL, 0x2, "Ljava.lang.Double;", NULL,  },
    { "fontSize_", NULL, 0x2, "Ljava.lang.Double;", NULL,  },
  };
  static J2ObjcClassInfo _FFTViewBehaviorSegmentedControl = { "ViewBehaviorSegmentedControl", "com.sponberg.fluid.layout", NULL, 0x1, 20, methods, 9, fields, 0, NULL};
  return &_FFTViewBehaviorSegmentedControl;
}

@end
