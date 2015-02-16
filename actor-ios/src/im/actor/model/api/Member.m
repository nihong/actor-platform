//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/Member.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Member.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiMember () {
 @public
  jint uid_;
  jint inviterUid_;
  jlong date_;
}
@end

@implementation ImActorModelApiMember

- (instancetype)initWithInt:(jint)uid
                    withInt:(jint)inviterUid
                   withLong:(jlong)date {
  if (self = [super init]) {
    self->uid_ = uid;
    self->inviterUid_ = inviterUid;
    self->date_ = date;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getUid {
  return self->uid_;
}

- (jint)getInviterUid {
  return self->inviterUid_;
}

- (jlong)getDate {
  return self->date_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->inviterUid_ = [values getIntWithInt:2];
  self->date_ = [values getLongWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeIntWithInt:2 withInt:self->inviterUid_];
  [writer writeLongWithInt:3 withLong:self->date_];
}

- (void)copyAllFieldsTo:(ImActorModelApiMember *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
  other->inviterUid_ = inviterUid_;
  other->date_ = date_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiMember)
