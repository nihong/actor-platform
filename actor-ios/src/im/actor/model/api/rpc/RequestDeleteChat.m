//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestDeleteChat.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/rpc/RequestDeleteChat.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestDeleteChat () {
 @public
  ImActorModelApiOutPeer *peer_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestDeleteChat, peer_, ImActorModelApiOutPeer *)

@implementation ImActorModelApiRpcRequestDeleteChat

+ (ImActorModelApiRpcRequestDeleteChat *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestDeleteChat_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer {
  if (self = [super init]) {
    self->peer_ = peer;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiOutPeer *)getPeer {
  return self->peer_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:[[ImActorModelApiOutPeer alloc] init]];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestDeleteChat_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestDeleteChat *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
}

@end

ImActorModelApiRpcRequestDeleteChat *ImActorModelApiRpcRequestDeleteChat_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestDeleteChat_init();
  return ((ImActorModelApiRpcRequestDeleteChat *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestDeleteChat alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestDeleteChat)
