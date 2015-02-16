//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateGroupAvatarChanged.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/updates/UpdateGroupAvatarChanged.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateGroupAvatarChanged () {
 @public
  jint groupId_;
  jlong rid_;
  jint uid_;
  ImActorModelApiAvatar *avatar_;
  jlong date_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateGroupAvatarChanged, avatar_, ImActorModelApiAvatar *)

@implementation ImActorModelApiUpdatesUpdateGroupAvatarChanged

+ (ImActorModelApiUpdatesUpdateGroupAvatarChanged *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateGroupAvatarChanged_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
  withImActorModelApiAvatar:(ImActorModelApiAvatar *)avatar
                   withLong:(jlong)date {
  if (self = [super init]) {
    self->groupId_ = groupId;
    self->rid_ = rid;
    self->uid_ = uid;
    self->avatar_ = avatar;
    self->date_ = date;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getGroupId {
  return self->groupId_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jint)getUid {
  return self->uid_;
}

- (ImActorModelApiAvatar *)getAvatar {
  return self->avatar_;
}

- (jlong)getDate {
  return self->date_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->rid_ = [values getLongWithInt:5];
  self->uid_ = [values getIntWithInt:2];
  self->avatar_ = [values optObjWithInt:3 withBSBserObject:[[ImActorModelApiAvatar alloc] init]];
  self->date_ = [values getLongWithInt:4];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:5 withLong:self->rid_];
  [writer writeIntWithInt:2 withInt:self->uid_];
  if (self->avatar_ != nil) {
    [writer writeObjectWithInt:3 withBSBserObject:self->avatar_];
  }
  [writer writeLongWithInt:4 withLong:self->date_];
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateGroupAvatarChanged_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateGroupAvatarChanged *)other {
  [super copyAllFieldsTo:other];
  other->groupId_ = groupId_;
  other->rid_ = rid_;
  other->uid_ = uid_;
  other->avatar_ = avatar_;
  other->date_ = date_;
}

@end

ImActorModelApiUpdatesUpdateGroupAvatarChanged *ImActorModelApiUpdatesUpdateGroupAvatarChanged_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateGroupAvatarChanged_init();
  return ((ImActorModelApiUpdatesUpdateGroupAvatarChanged *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateGroupAvatarChanged alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateGroupAvatarChanged)
