//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/util/LRUCache.java
//

#include "com/sponberg/fluid/FluidApp.h"
#include "com/sponberg/fluid/GlobalState.h"
#include "com/sponberg/fluid/SystemService.h"
#include "com/sponberg/fluid/util/LRUCache.h"
#include "java/lang/Runnable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"

@implementation FFTLRUCache

- (id)initWithInt:(int)maxEntries {
  if (self = [super initWithInt:8 withFloat:.75f withBoolean:YES]) {
    removedListeners_ = [[JavaUtilArrayList alloc] init];
    self->maxEntries_ = maxEntries;
  }
  return self;
}

- (BOOL)removeEldestEntryWithJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)eldest {
  BOOL shouldRemove = [self size] > maxEntries_;
  if (shouldRemove) {
    id<JavaLangRunnable> r = [[FFTLRUCache_$1 alloc] initWithFFTLRUCache:self withJavaUtilMap_Entry:eldest];
    [((id<FFTSystemService>) nil_chk([((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getSystemService])) runOnUiThreadWithJavaLangRunnable:r];
  }
  return [self size] > maxEntries_;
}

- (void)addRemovedListenerWithFFTLRUCache_RemovedListener:(id<FFTLRUCache_RemovedListener>)listener {
  [((JavaUtilArrayList *) nil_chk(removedListeners_)) addWithId:listener];
}

- (void)copyAllFieldsTo:(FFTLRUCache *)other {
  [super copyAllFieldsTo:other];
  other->maxEntries_ = maxEntries_;
  other->removedListeners_ = removedListeners_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "LRUCache", NULL, 0x1, NULL },
    { "removeEldestEntryWithJavaUtilMap_Entry:", "removeEldestEntry", "Z", 0x4, NULL },
    { "addRemovedListenerWithFFTLRUCache_RemovedListener:", "addRemovedListener", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "maxEntries_", NULL, 0x12, "I", NULL,  },
    { "removedListeners_", NULL, 0x0, "Ljava.util.ArrayList;", NULL,  },
  };
  static const char *superclass_type_args[] = {"TK;", "TV;"};
  static J2ObjcClassInfo _FFTLRUCache = { "LRUCache", "com.sponberg.fluid.util", NULL, 0x1, 3, methods, 2, fields, 2, superclass_type_args};
  return &_FFTLRUCache;
}

@end

@interface FFTLRUCache_RemovedListener : NSObject
@end

@implementation FFTLRUCache_RemovedListener

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "entryWasRemovedWithId:withId:", "entryWasRemoved", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _FFTLRUCache_RemovedListener = { "RemovedListener", "com.sponberg.fluid.util", "LRUCache", 0x209, 1, methods, 0, NULL, 0, NULL};
  return &_FFTLRUCache_RemovedListener;
}

@end

@implementation FFTLRUCache_$1

- (void)run {
  for (id<FFTLRUCache_RemovedListener> __strong l in nil_chk(this$0_->removedListeners_)) {
    [((id<FFTLRUCache_RemovedListener>) nil_chk(l)) entryWasRemovedWithId:[((id<JavaUtilMap_Entry>) nil_chk(val$eldest_)) getKey] withId:[val$eldest_ getValue]];
  }
}

- (id)initWithFFTLRUCache:(FFTLRUCache *)outer$
    withJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)capture$0 {
  this$0_ = outer$;
  val$eldest_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL },
    { "initWithFFTLRUCache:withJavaUtilMap_Entry:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.sponberg.fluid.util.LRUCache;", NULL,  },
    { "val$eldest_", NULL, 0x1012, "Ljava.util.Map$Entry;", NULL,  },
  };
  static J2ObjcClassInfo _FFTLRUCache_$1 = { "$1", "com.sponberg.fluid.util", "LRUCache", 0x8000, 2, methods, 2, fields, 0, NULL};
  return &_FFTLRUCache_$1;
}

@end
