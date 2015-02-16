//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestChangeEmailTitle.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestChangeEmailTitle.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestChangeEmailTitle () {
 @public
  jint emailId_;
  NSString *title_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestChangeEmailTitle, title_, NSString *)

@implementation ImActorModelApiRpcRequestChangeEmailTitle

+ (ImActorModelApiRpcRequestChangeEmailTitle *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestChangeEmailTitle_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)emailId
               withNSString:(NSString *)title {
  if (self = [super init]) {
    self->emailId_ = emailId;
    self->title_ = title;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getEmailId {
  return self->emailId_;
}

- (NSString *)getTitle {
  return self->title_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->emailId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->title_ = [values getStringWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->emailId_];
  if (self->title_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:2 withNSString:self->title_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestChangeEmailTitle_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestChangeEmailTitle *)other {
  [super copyAllFieldsTo:other];
  other->emailId_ = emailId_;
  other->title_ = title_;
}

@end

ImActorModelApiRpcRequestChangeEmailTitle *ImActorModelApiRpcRequestChangeEmailTitle_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestChangeEmailTitle_init();
  return ((ImActorModelApiRpcRequestChangeEmailTitle *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestChangeEmailTitle alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestChangeEmailTitle)
