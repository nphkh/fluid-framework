//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/util/MethodUtil.java
//

#ifndef _FFTMethodUtil_H_
#define _FFTMethodUtil_H_

@class IOSClass;
@class IOSObjectArray;
@class JavaLangReflectMethod;
@class JavaUtilHashMap;
@protocol JavaUtilCollection;

#import "JreEmulation.h"

@interface FFTMethodUtil : NSObject {
}

+ (JavaUtilHashMap *)getMethodsWithIOSClass:(IOSClass *)c;

+ (id<JavaUtilCollection>)getAllMethodsWithIOSClass:(IOSClass *)c;

+ (JavaLangReflectMethod *)getMethodWithIOSClass:(IOSClass *)c
                                    withNSString:(NSString *)name
                               withIOSClassArray:(IOSObjectArray *)parameters;

+ (JavaLangReflectMethod *)getGetterMethodWithIOSClass:(IOSClass *)rowObject
                                          withNSString:(NSString *)name;

+ (JavaLangReflectMethod *)getGetterMethodWithStringParameterWithIOSClass:(IOSClass *)rowObject
                                                             withNSString:(NSString *)name;

+ (JavaLangReflectMethod *)getSetterMethodWithIOSClass:(IOSClass *)object
                                          withNSString:(NSString *)name
                                          withIOSClass:(IOSClass *)type;

- (id)init;

@end

FOUNDATION_EXPORT BOOL FFTMethodUtil_initialized;
J2OBJC_STATIC_INIT(FFTMethodUtil)

FOUNDATION_EXPORT JavaUtilHashMap *FFTMethodUtil_classMethodMap_;
J2OBJC_STATIC_FIELD_GETTER(FFTMethodUtil, classMethodMap_, JavaUtilHashMap *)
J2OBJC_STATIC_FIELD_SETTER(FFTMethodUtil, classMethodMap_, JavaUtilHashMap *)

FOUNDATION_EXPORT BOOL FFTMethodUtil_cache_;
J2OBJC_STATIC_FIELD_GETTER(FFTMethodUtil, cache_, BOOL)
J2OBJC_STATIC_FIELD_REF_GETTER(FFTMethodUtil, cache_, BOOL)

typedef FFTMethodUtil ComSponbergFluidUtilMethodUtil;

@interface FFTMethodSignature : NSObject {
 @public
  NSString *name_;
  IOSObjectArray *parameters_;
  int hashcode_;
}

- (id)initWithNSString:(NSString *)name
     withIOSClassArray:(IOSObjectArray *)parameters;

- (NSString *)getName;

- (IOSObjectArray *)getParameters;

- (NSUInteger)hash;

- (BOOL)isEqual:(id)obj;

- (void)copyAllFieldsTo:(FFTMethodSignature *)other;

@end

__attribute__((always_inline)) inline void FFTMethodSignature_init() {}

J2OBJC_FIELD_SETTER(FFTMethodSignature, name_, NSString *)
J2OBJC_FIELD_SETTER(FFTMethodSignature, parameters_, IOSObjectArray *)

typedef FFTMethodSignature ComSponbergFluidUtilMethodSignature;

#endif // _FFTMethodUtil_H_
