//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/ServiceExEmailContactRegistered.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/ServiceExEmailContactRegistered.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiServiceExEmailContactRegistered () {
 @public
  jint uid_;
}
@end

@implementation ImActorModelApiServiceExEmailContactRegistered

- (instancetype)initWithInt:(jint)uid {
  if (self = [super init]) {
    self->uid_ = uid;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getUid {
  return self->uid_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
}

- (void)copyAllFieldsTo:(ImActorModelApiServiceExEmailContactRegistered *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiServiceExEmailContactRegistered)
