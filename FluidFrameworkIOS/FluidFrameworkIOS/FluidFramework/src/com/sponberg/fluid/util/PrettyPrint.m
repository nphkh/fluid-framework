//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/util/PrettyPrint.java
//

#include "com/eclipsesource/json/JsonArray.h"
#include "com/eclipsesource/json/JsonObject.h"
#include "com/eclipsesource/json/JsonValue.h"
#include "com/sponberg/fluid/util/PrettyPrint.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@implementation FFTPrettyPrint

+ (NSString *)toStringWithJavaUtilMap:(id<JavaUtilMap>)map {
  if (map == nil) {
    return @"";
  }
  return [FFTPrettyPrint toStringWithJavaUtilMap:map withInt:0];
}

+ (NSString *)toStringWithJavaUtilMap:(id<JavaUtilMap>)map
                              withInt:(int)indent {
  JavaLangStringBuilder *sb = [[JavaLangStringBuilder alloc] initWithNSString:@"\n"];
  id<JavaUtilIterator> iter = [((id<JavaUtilSet>) nil_chk([((id<JavaUtilMap>) nil_chk(map)) entrySet])) iterator];
  NSString *indentString = @"";
  for (int i = 0; i < indent; i++) {
    indentString = [NSString stringWithFormat:@"%@\t", indentString];
  }
  while ([((id<JavaUtilIterator>) nil_chk(iter)) hasNext]) {
    id<JavaUtilMap_Entry> entry_ = [iter next];
    (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:indentString])) appendWithNSString:@"\""])) appendWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey]])) appendWithNSString:@"\""];
    (void) [sb appendWithNSString:@" = "];
    id v = [entry_ getValue];
    if ([v conformsToProtocol: @protocol(JavaUtilMap)]) {
      (void) [sb appendWithNSString:@"{"];
      (void) [sb appendWithNSString:[FFTPrettyPrint toStringWithJavaUtilMap:(id<JavaUtilMap>) check_protocol_cast(v, @protocol(JavaUtilMap)) withInt:indent + 1]];
      (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"\n"])) appendWithNSString:indentString])) appendWithNSString:@"}"];
    }
    else {
      (void) [sb appendWithChar:'"'];
      (void) [sb appendWithId:[entry_ getValue]];
      (void) [sb appendWithChar:'"'];
    }
    if ([iter hasNext]) {
      (void) [((JavaLangStringBuilder *) nil_chk([sb appendWithChar:','])) appendWithChar:0x000a];
    }
  }
  return [sb description];
}

+ (NSString *)toStringWithFFTJsonObject:(FFTJsonObject *)object {
  return [FFTPrettyPrint toStringWithFFTJsonObject:object withInt:0];
}

+ (NSString *)toStringWithFFTJsonObject:(FFTJsonObject *)object
                                withInt:(int)indent {
  JavaLangStringBuilder *sb = [[JavaLangStringBuilder alloc] initWithNSString:@"\n"];
  id<JavaUtilIterator> iter = [((FFTJsonObject *) nil_chk(object)) iterator];
  NSString *indentString = @"";
  for (int i = 0; i < indent; i++) {
    indentString = [NSString stringWithFormat:@"%@\t", indentString];
  }
  while ([((id<JavaUtilIterator>) nil_chk(iter)) hasNext]) {
    FFTJsonObject_Member *entry_ = [iter next];
    (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:indentString])) appendWithNSString:@"\""])) appendWithNSString:[((FFTJsonObject_Member *) nil_chk(entry_)) getName]])) appendWithNSString:@"\""];
    (void) [sb appendWithNSString:@" = "];
    FFTJsonValue *value = [entry_ getValue];
    if ([((FFTJsonValue *) nil_chk(value)) isObject]) {
      (void) [sb appendWithNSString:@"{"];
      (void) [sb appendWithNSString:[FFTPrettyPrint toStringWithFFTJsonObject:[value asObject] withInt:indent + 1]];
      (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"\n"])) appendWithNSString:indentString])) appendWithNSString:@"}"];
    }
    else if ([value isArray]) {
      for (FFTJsonValue * __strong arrValue in nil_chk([value asArray])) {
        (void) [sb appendWithNSString:@"["];
        (void) [sb appendWithNSString:[FFTPrettyPrint toStringWithFFTJsonObject:[((FFTJsonValue *) nil_chk(arrValue)) asObject] withInt:indent + 1]];
        (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"\n"])) appendWithNSString:indentString])) appendWithNSString:@"]"];
      }
    }
    else {
      (void) [sb appendWithNSString:[value description]];
    }
    if ([iter hasNext]) {
      (void) [((JavaLangStringBuilder *) nil_chk([sb appendWithChar:','])) appendWithChar:0x000a];
    }
  }
  return [sb description];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "toStringWithJavaUtilMap:", "toString", "Ljava.lang.String;", 0x9, NULL },
    { "toStringWithJavaUtilMap:withInt:", "toString", "Ljava.lang.String;", 0xc, NULL },
    { "toStringWithFFTJsonObject:", "toString", "Ljava.lang.String;", 0x9, NULL },
    { "toStringWithFFTJsonObject:withInt:", "toString", "Ljava.lang.String;", 0xc, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcClassInfo _FFTPrettyPrint = { "PrettyPrint", "com.sponberg.fluid.util", NULL, 0x1, 5, methods, 0, NULL, 0, NULL};
  return &_FFTPrettyPrint;
}

@end
