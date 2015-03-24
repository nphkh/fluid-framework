//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/AttributedText.java
//

#include "com/sponberg/fluid/FluidApp.h"
#include "com/sponberg/fluid/GlobalState.h"
#include "com/sponberg/fluid/layout/AttributedText.h"
#include "com/sponberg/fluid/layout/Color.h"
#include "com/sponberg/fluid/layout/ViewManager.h"
#include "java/lang/Boolean.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Stack.h"

@implementation FFTAttributedText

- (id)initWithNSString:(NSString *)text {
  if (self = [super init]) {
    attributes_ = [[JavaUtilArrayList alloc] init];
    FFTViewManager *viewManager = [((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getViewManager];
    if (text == nil || [((NSString *) nil_chk([text trim])) isEqual:@""]) {
      self->text_ = @"";
      return self;
    }
    JavaUtilStack *stack = [[JavaUtilStack alloc] init];
    BOOL disabled = NO;
    BOOL openTag = NO;
    BOOL startTag = YES;
    JavaLangStringBuilder *tagBuilder = [[JavaLangStringBuilder alloc] init];
    JavaLangStringBuilder *builder = [[JavaLangStringBuilder alloc] init];
    int textIndex = 0;
    for (int index = 0; index < ((int) [((NSString *) nil_chk(text)) length]); index++) {
      unichar c = [text charAtWithInt:index];
      if (disabled) {
        (void) [builder appendWithChar:c];
        textIndex++;
        continue;
      }
      if (c == '<') {
        openTag = YES;
        startTag = YES;
      }
      else if (openTag && c == '/') {
        startTag = NO;
      }
      else if (openTag && c == '>') {
        if (startTag) {
          if (![stack empty]) {
            [((FFTAttributedText_Tag *) nil_chk([stack peek])) setEndIndexWithInt:textIndex];
          }
          (void) [stack pushWithId:[[FFTAttributedText_Tag alloc] initWithNSString:[tagBuilder description] withInt:textIndex]];
          tagBuilder = [[JavaLangStringBuilder alloc] init];
        }
        else {
          FFTAttributedText_Tag *tag = [stack peek];
          [((FFTAttributedText_Tag *) nil_chk(tag)) setEndIndexWithInt:textIndex];
          for (FFTAttributedText_Tag_Range * __strong range in nil_chk(tag->ranges_)) {
            if (((FFTAttributedText_Tag_Range *) nil_chk(range))->startIndex_ == range->endIndex_) {
              continue;
            }
            FFTAttributedText_Attribute *attribute = [[FFTAttributedText_Attribute alloc] init];
            [attributes_ addWithId:attribute];
            attribute->startIndex_ = range->startIndex_;
            attribute->endIndex_ = range->endIndex_;
            for (FFTAttributedText_Tag * __strong t in stack) {
              NSString *s = ((FFTAttributedText_Tag *) nil_chk(t))->tag_;
              if ([((NSString *) nil_chk(s)) equalsIgnoreCase:@"b"]) {
                attribute->bold_ = YES;
              }
              else if ([s equalsIgnoreCase:@"i"]) {
                attribute->italic_ = YES;
              }
              else if ([s equalsIgnoreCase:@"u"]) {
                attribute->underline_ = YES;
              }
              else if ([s hasPrefix:@"background-color"]) {
                FFTColor *color = [((FFTViewManager *) nil_chk(viewManager)) getColorWithNSString:[s substring:17]];
                attribute->backgroundColor_ = color;
              }
              else if ([s hasPrefix:@"color"]) {
                FFTColor *color = [((FFTViewManager *) nil_chk(viewManager)) getColorWithNSString:[s substring:6]];
                attribute->color_ = color;
              }
              else if ([s hasPrefix:@"corner-radius"]) {
                attribute->cornerRadius_ = [((FFTViewManager *) nil_chk(viewManager)) getIntWithNSString:[s substring:14]];
              }
              else if ([s hasPrefix:@"disable-attributed-text"]) {
                disabled = YES;
              }
            }
          }
          (void) [stack pop];
          if (![stack empty]) {
            [((FFTAttributedText_Tag *) nil_chk([stack peek])) addStartIndexWithInt:textIndex];
          }
        }
        openTag = NO;
      }
      else if (openTag) {
        (void) [tagBuilder appendWithChar:c];
      }
      else {
        (void) [builder appendWithChar:c];
        textIndex++;
      }
    }
    self->text_ = [builder description];
  }
  return self;
}

- (NSString *)getText {
  return self->text_;
}

- (JavaUtilArrayList *)getAttributes {
  return self->attributes_;
}

- (void)setTextWithNSString:(NSString *)text {
  self->text_ = text;
}

- (void)setAttributesWithJavaUtilArrayList:(JavaUtilArrayList *)attributes {
  self->attributes_ = attributes;
}

- (BOOL)isEqual:(id)o {
  if (o == self) return YES;
  if (!([o isKindOfClass:[FFTAttributedText class]])) return NO;
  FFTAttributedText *other = (FFTAttributedText *) check_class_cast(o, [FFTAttributedText class]);
  if (![((FFTAttributedText *) nil_chk(other)) canEqualWithId:(id) check_class_cast(self, [NSObject class])]) return NO;
  id this$text = [self getText];
  id other$text = [other getText];
  if (this$text == nil ? other$text != nil : ![this$text isEqual:other$text]) return NO;
  id this$attributes = [self getAttributes];
  id other$attributes = [other getAttributes];
  if (this$attributes == nil ? other$attributes != nil : ![this$attributes isEqual:other$attributes]) return NO;
  return YES;
}

- (BOOL)canEqualWithId:(id)other {
  return [other isKindOfClass:[FFTAttributedText class]];
}

- (NSUInteger)hash {
  int PRIME = 59;
  int result = 1;
  id $text = [self getText];
  result = result * PRIME + ($text == nil ? 0 : ((int) [$text hash]));
  id $attributes = [self getAttributes];
  result = result * PRIME + ($attributes == nil ? 0 : ((int) [$attributes hash]));
  return result;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"AttributedText(text=%@, attributes=%@)", [self getText], [self getAttributes]];
}

- (void)copyAllFieldsTo:(FFTAttributedText *)other {
  [super copyAllFieldsTo:other];
  other->attributes_ = attributes_;
  other->text_ = text_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "AttributedText", NULL, 0x1, NULL },
    { "getText", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getAttributes", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "setTextWithNSString:", "setText", "V", 0x1, NULL },
    { "setAttributesWithJavaUtilArrayList:", "setAttributes", "V", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "canEqualWithId:", "canEqual", "Z", 0x4, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "text_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
    { "attributes_", NULL, 0x0, "Ljava.util.ArrayList;", NULL,  },
  };
  static J2ObjcClassInfo _FFTAttributedText = { "AttributedText", "com.sponberg.fluid.layout", NULL, 0x1, 9, methods, 2, fields, 0, NULL};
  return &_FFTAttributedText;
}

@end

@implementation FFTAttributedText_Tag

- (id)initWithNSString:(NSString *)tag
               withInt:(int)startIndex {
  if (self = [super init]) {
    ranges_ = [[JavaUtilArrayList alloc] init];
    self->tag_ = tag;
    [ranges_ addWithId:[[FFTAttributedText_Tag_Range alloc] initWithInt:startIndex]];
  }
  return self;
}

- (void)setEndIndexWithInt:(int)index {
  ((FFTAttributedText_Tag_Range *) nil_chk([ranges_ getWithInt:[((JavaUtilArrayList *) nil_chk(ranges_)) size] - 1]))->endIndex_ = index;
}

- (void)addStartIndexWithInt:(int)index {
  [((JavaUtilArrayList *) nil_chk(ranges_)) addWithId:[[FFTAttributedText_Tag_Range alloc] initWithInt:index]];
}

- (void)copyAllFieldsTo:(FFTAttributedText_Tag *)other {
  [super copyAllFieldsTo:other];
  other->ranges_ = ranges_;
  other->tag_ = tag_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:", "Tag", NULL, 0x1, NULL },
    { "setEndIndexWithInt:", "setEndIndex", "V", 0x1, NULL },
    { "addStartIndexWithInt:", "addStartIndex", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "tag_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
    { "ranges_", NULL, 0x0, "Ljava.util.ArrayList;", NULL,  },
  };
  static J2ObjcClassInfo _FFTAttributedText_Tag = { "Tag", "com.sponberg.fluid.layout", "AttributedText", 0x9, 3, methods, 2, fields, 0, NULL};
  return &_FFTAttributedText_Tag;
}

@end

@implementation FFTAttributedText_Tag_Range

- (id)initWithInt:(int)startIndex {
  if (self = [super init]) {
    self->startIndex_ = startIndex;
  }
  return self;
}

- (void)copyAllFieldsTo:(FFTAttributedText_Tag_Range *)other {
  [super copyAllFieldsTo:other];
  other->endIndex_ = endIndex_;
  other->startIndex_ = startIndex_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "Range", NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "startIndex_", NULL, 0x0, "I", NULL,  },
    { "endIndex_", NULL, 0x0, "I", NULL,  },
  };
  static J2ObjcClassInfo _FFTAttributedText_Tag_Range = { "Range", "com.sponberg.fluid.layout", "AttributedText$Tag", 0x9, 1, methods, 2, fields, 0, NULL};
  return &_FFTAttributedText_Tag_Range;
}

@end

@implementation FFTAttributedText_Attribute

- (id)init {
  return [super init];
}

- (BOOL)isBold {
  return self->bold_;
}

- (BOOL)isItalic {
  return self->italic_;
}

- (BOOL)isUnderline {
  return self->underline_;
}

- (FFTColor *)getBackgroundColor {
  return self->backgroundColor_;
}

- (FFTColor *)getColor {
  return self->color_;
}

- (int)getStartIndex {
  return self->startIndex_;
}

- (int)getEndIndex {
  return self->endIndex_;
}

- (int)getCornerRadius {
  return self->cornerRadius_;
}

- (void)setBoldWithBoolean:(BOOL)bold {
  self->bold_ = bold;
}

- (void)setItalicWithBoolean:(BOOL)italic {
  self->italic_ = italic;
}

- (void)setUnderlineWithBoolean:(BOOL)underline {
  self->underline_ = underline;
}

- (void)setBackgroundColorWithFFTColor:(FFTColor *)backgroundColor {
  self->backgroundColor_ = backgroundColor;
}

- (void)setColorWithFFTColor:(FFTColor *)color {
  self->color_ = color;
}

- (void)setStartIndexWithInt:(int)startIndex {
  self->startIndex_ = startIndex;
}

- (void)setEndIndexWithInt:(int)endIndex {
  self->endIndex_ = endIndex;
}

- (void)setCornerRadiusWithInt:(int)cornerRadius {
  self->cornerRadius_ = cornerRadius;
}

- (BOOL)isEqual:(id)o {
  if (o == self) return YES;
  if (!([o isKindOfClass:[FFTAttributedText_Attribute class]])) return NO;
  FFTAttributedText_Attribute *other = (FFTAttributedText_Attribute *) check_class_cast(o, [FFTAttributedText_Attribute class]);
  if (![((FFTAttributedText_Attribute *) nil_chk(other)) canEqualWithId:(id) check_class_cast(self, [NSObject class])]) return NO;
  if ([self isBold] != [other isBold]) return NO;
  if ([self isItalic] != [other isItalic]) return NO;
  if ([self isUnderline] != [other isUnderline]) return NO;
  id this$backgroundColor = [self getBackgroundColor];
  id other$backgroundColor = [other getBackgroundColor];
  if (this$backgroundColor == nil ? other$backgroundColor != nil : ![this$backgroundColor isEqual:other$backgroundColor]) return NO;
  id this$color = [self getColor];
  id other$color = [other getColor];
  if (this$color == nil ? other$color != nil : ![this$color isEqual:other$color]) return NO;
  if ([self getStartIndex] != [other getStartIndex]) return NO;
  if ([self getEndIndex] != [other getEndIndex]) return NO;
  if ([self getCornerRadius] != [other getCornerRadius]) return NO;
  return YES;
}

- (BOOL)canEqualWithId:(id)other {
  return [other isKindOfClass:[FFTAttributedText_Attribute class]];
}

- (NSUInteger)hash {
  int PRIME = 59;
  int result = 1;
  result = result * PRIME + ([self isBold] ? 79 : 97);
  result = result * PRIME + ([self isItalic] ? 79 : 97);
  result = result * PRIME + ([self isUnderline] ? 79 : 97);
  id $backgroundColor = [self getBackgroundColor];
  result = result * PRIME + ($backgroundColor == nil ? 0 : ((int) [$backgroundColor hash]));
  id $color = [self getColor];
  result = result * PRIME + ($color == nil ? 0 : ((int) [$color hash]));
  result = result * PRIME + [self getStartIndex];
  result = result * PRIME + [self getEndIndex];
  result = result * PRIME + [self getCornerRadius];
  return result;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"AttributedText.Attribute(bold=%@, italic=%@, underline=%@, backgroundColor=%@, color=%@, startIndex=%d, endIndex=%d, cornerRadius=%d)", [JavaLangBoolean toStringWithBoolean:[self isBold]], [JavaLangBoolean toStringWithBoolean:[self isItalic]], [JavaLangBoolean toStringWithBoolean:[self isUnderline]], [self getBackgroundColor], [self getColor], [self getStartIndex], [self getEndIndex], [self getCornerRadius]];
}

- (void)copyAllFieldsTo:(FFTAttributedText_Attribute *)other {
  [super copyAllFieldsTo:other];
  other->backgroundColor_ = backgroundColor_;
  other->bold_ = bold_;
  other->color_ = color_;
  other->cornerRadius_ = cornerRadius_;
  other->endIndex_ = endIndex_;
  other->italic_ = italic_;
  other->startIndex_ = startIndex_;
  other->underline_ = underline_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "Attribute", NULL, 0x1, NULL },
    { "isBold", NULL, "Z", 0x1, NULL },
    { "isItalic", NULL, "Z", 0x1, NULL },
    { "isUnderline", NULL, "Z", 0x1, NULL },
    { "getBackgroundColor", NULL, "Lcom.sponberg.fluid.layout.Color;", 0x1, NULL },
    { "getColor", NULL, "Lcom.sponberg.fluid.layout.Color;", 0x1, NULL },
    { "getStartIndex", NULL, "I", 0x1, NULL },
    { "getEndIndex", NULL, "I", 0x1, NULL },
    { "getCornerRadius", NULL, "I", 0x1, NULL },
    { "setBoldWithBoolean:", "setBold", "V", 0x1, NULL },
    { "setItalicWithBoolean:", "setItalic", "V", 0x1, NULL },
    { "setUnderlineWithBoolean:", "setUnderline", "V", 0x1, NULL },
    { "setBackgroundColorWithFFTColor:", "setBackgroundColor", "V", 0x1, NULL },
    { "setColorWithFFTColor:", "setColor", "V", 0x1, NULL },
    { "setStartIndexWithInt:", "setStartIndex", "V", 0x1, NULL },
    { "setEndIndexWithInt:", "setEndIndex", "V", 0x1, NULL },
    { "setCornerRadiusWithInt:", "setCornerRadius", "V", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "canEqualWithId:", "canEqual", "Z", 0x4, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "bold_", NULL, 0x0, "Z", NULL,  },
    { "italic_", NULL, 0x0, "Z", NULL,  },
    { "underline_", NULL, 0x0, "Z", NULL,  },
    { "backgroundColor_", NULL, 0x0, "Lcom.sponberg.fluid.layout.Color;", NULL,  },
    { "color_", NULL, 0x0, "Lcom.sponberg.fluid.layout.Color;", NULL,  },
    { "startIndex_", NULL, 0x0, "I", NULL,  },
    { "endIndex_", NULL, 0x0, "I", NULL,  },
    { "cornerRadius_", NULL, 0x0, "I", NULL,  },
  };
  static J2ObjcClassInfo _FFTAttributedText_Attribute = { "Attribute", "com.sponberg.fluid.layout", "AttributedText", 0x9, 21, methods, 8, fields, 0, NULL};
  return &_FFTAttributedText_Attribute;
}

@end
