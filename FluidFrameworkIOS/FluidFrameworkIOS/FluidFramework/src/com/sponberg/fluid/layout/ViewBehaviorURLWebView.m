//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/ViewBehaviorURLWebView.java
//

#include "IOSClass.h"
#include "com/sponberg/fluid/layout/ViewBehavior.h"
#include "com/sponberg/fluid/layout/ViewBehaviorURLWebView.h"
#include "com/sponberg/fluid/util/KeyValueList.h"

@implementation FFTViewBehaviorURLWebView

- (id)initWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  if (self = [super initWithNSString:FFTViewBehavior_get_urlWebview_() withFFTKeyValueList:properties]) {
    self->url_ = [FFTViewBehavior getStringPropertyWithNSString:@"url" withNSString:nil withFFTKeyValueList:properties];
    self->urlKey_ = [FFTViewBehavior getStringPropertyWithNSString:@"url-key" withNSString:nil withFFTKeyValueList:properties];
  }
  return self;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"ViewBehaviorURLWebView(url=%@, urlKey=%@)", [self getUrl], [self getUrlKey]];
}

- (NSString *)getUrl {
  return self->url_;
}

- (NSString *)getUrlKey {
  return self->urlKey_;
}

- (void)copyAllFieldsTo:(FFTViewBehaviorURLWebView *)other {
  [super copyAllFieldsTo:other];
  other->url_ = url_;
  other->urlKey_ = urlKey_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithFFTKeyValueList:", "ViewBehaviorURLWebView", NULL, 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "getUrl", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getUrlKey", NULL, "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "url_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
    { "urlKey_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _FFTViewBehaviorURLWebView = { "ViewBehaviorURLWebView", "com.sponberg.fluid.layout", NULL, 0x1, 4, methods, 2, fields, 0, NULL};
  return &_FFTViewBehaviorURLWebView;
}

@end
