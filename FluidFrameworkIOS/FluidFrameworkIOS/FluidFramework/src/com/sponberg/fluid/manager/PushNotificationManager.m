//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/manager/PushNotificationManager.java
//

#include "com/sponberg/fluid/manager/PushNotificationManager.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"

@implementation FFTPushNotificationManager

- (void)addPushNotificationListenerWithFFTPushNotificationManager_PushNotificationListener:(id<FFTPushNotificationManager_PushNotificationListener>)listener {
  [((JavaUtilArrayList *) nil_chk(listeners_)) addWithId:listener];
}

- (void)didReceivePushNotificationWithJavaUtilHashMap:(JavaUtilHashMap *)data {
  for (id<FFTPushNotificationManager_PushNotificationListener> __strong l in nil_chk(listeners_)) {
    [((id<FFTPushNotificationManager_PushNotificationListener>) nil_chk(l)) pushNotificationReceivedWithJavaUtilHashMap:data];
  }
}

- (id)init {
  if (self = [super init]) {
    listeners_ = [[JavaUtilArrayList alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(FFTPushNotificationManager *)other {
  [super copyAllFieldsTo:other];
  other->listeners_ = listeners_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "addPushNotificationListenerWithFFTPushNotificationManager_PushNotificationListener:", "addPushNotificationListener", "V", 0x1, NULL },
    { "didReceivePushNotificationWithJavaUtilHashMap:", "didReceivePushNotification", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "listeners_", NULL, 0x0, "Ljava.util.ArrayList;", NULL,  },
  };
  static J2ObjcClassInfo _FFTPushNotificationManager = { "PushNotificationManager", "com.sponberg.fluid.manager", NULL, 0x1, 3, methods, 1, fields, 0, NULL};
  return &_FFTPushNotificationManager;
}

@end

@interface FFTPushNotificationManager_PushNotificationListener : NSObject
@end

@implementation FFTPushNotificationManager_PushNotificationListener

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "pushNotificationReceivedWithJavaUtilHashMap:", "pushNotificationReceived", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _FFTPushNotificationManager_PushNotificationListener = { "PushNotificationListener", "com.sponberg.fluid.manager", "PushNotificationManager", 0x201, 1, methods, 0, NULL, 0, NULL};
  return &_FFTPushNotificationManager_PushNotificationListener;
}

@end
