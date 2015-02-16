//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/sender/SenderActor.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/MessageContent.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/PeerType.h"
#include "im/actor/model/api/TextMessage.h"
#include "im/actor/model/api/rpc/RequestSendMessage.h"
#include "im/actor/model/api/rpc/ResponseSeqDate.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/Environment.h"
#include "im/actor/model/entity/Message.h"
#include "im/actor/model/entity/MessageState.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/TextContent.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/sender/SenderActor.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/modules/utils/RandomUtils.h"
#include "im/actor/model/network/RpcException.h"

__attribute__((unused)) static void ImActorModelModulesSenderSenderActor_sendMessageWithAMPeer_withLong_withLong_withImActorModelEntityContentAbsContent_(ImActorModelModulesSenderSenderActor *self, AMPeer *peer, jlong rid, jlong time, ImActorModelEntityContentAbsContent *content);

@interface ImActorModelModulesSenderSenderActor ()

- (void)sendMessageWithAMPeer:(AMPeer *)peer
                     withLong:(jlong)rid
                     withLong:(jlong)time
withImActorModelEntityContentAbsContent:(ImActorModelEntityContentAbsContent *)content;
@end

@interface ImActorModelModulesSenderSenderActor_SendMessage () {
 @public
  AMPeer *peer_;
  ImActorModelEntityContentAbsContent *content_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesSenderSenderActor_SendMessage, peer_, AMPeer *)
J2OBJC_FIELD_SETTER(ImActorModelModulesSenderSenderActor_SendMessage, content_, ImActorModelEntityContentAbsContent *)

@interface ImActorModelModulesSenderSenderActor_MessageSent () {
 @public
  jlong rid_;
  jlong date_;
}
@end

@implementation ImActorModelModulesSenderSenderActor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  return [super initWithImActorModelModulesModules:messenger];
}

- (void)preStart {
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorModelModulesSenderSenderActor_SendMessage class]]) {
    ImActorModelModulesSenderSenderActor_SendMessage *sendMessage = (ImActorModelModulesSenderSenderActor_SendMessage *) check_class_cast(message, [ImActorModelModulesSenderSenderActor_SendMessage class]);
    ImActorModelModulesSenderSenderActor_sendMessageWithAMPeer_withLong_withLong_withImActorModelEntityContentAbsContent_(self, ((ImActorModelModulesSenderSenderActor_SendMessage *) nil_chk(sendMessage))->peer_, ImActorModelModulesUtilsRandomUtils_nextRid(), DKEnvironment_getCurrentTime(), sendMessage->content_);
  }
  else if ([message isKindOfClass:[ImActorModelModulesSenderSenderActor_MessageSent class]]) {
  }
}

- (void)sendMessageWithAMPeer:(AMPeer *)peer
                     withLong:(jlong)rid
                     withLong:(jlong)time
withImActorModelEntityContentAbsContent:(ImActorModelEntityContentAbsContent *)content {
  ImActorModelModulesSenderSenderActor_sendMessageWithAMPeer_withLong_withLong_withImActorModelEntityContentAbsContent_(self, peer, rid, time, content);
}

@end

void ImActorModelModulesSenderSenderActor_sendMessageWithAMPeer_withLong_withLong_withImActorModelEntityContentAbsContent_(ImActorModelModulesSenderSenderActor *self, AMPeer *peer, jlong rid, jlong time, ImActorModelEntityContentAbsContent *content) {
  ImActorModelApiOutPeer *outPeer;
  ImActorModelApiPeer *apiPeer;
  if ([((AMPeer *) nil_chk(peer)) getPeerType] == AMPeerTypeEnum_get_PRIVATE()) {
    AMUser *user = [self getUserWithInt:[peer getPeerId]];
    if (user == nil) {
      return;
    }
    outPeer = [[ImActorModelApiOutPeer alloc] initWithImActorModelApiPeerTypeEnum:ImActorModelApiPeerTypeEnum_get_PRIVATE() withInt:[peer getPeerId] withLong:[((AMUser *) nil_chk(user)) getAccessHash]];
    apiPeer = [[ImActorModelApiPeer alloc] initWithImActorModelApiPeerTypeEnum:ImActorModelApiPeerTypeEnum_get_PRIVATE() withInt:[peer getPeerId]];
  }
  else {
    return;
  }
  ImActorModelApiMessageContent *outContent;
  if ([content isKindOfClass:[ImActorModelEntityContentTextContent class]]) {
    outContent = [[ImActorModelApiMessageContent alloc] initWithInt:(jint) 0x01 withByteArray:[((ImActorModelApiTextMessage *) [[ImActorModelApiTextMessage alloc] initWithNSString:[((ImActorModelEntityContentTextContent *) nil_chk(((ImActorModelEntityContentTextContent *) check_class_cast(content, [ImActorModelEntityContentTextContent class])))) getText] withInt:0 withByteArray:[IOSByteArray newArrayWithLength:0]]) toByteArray]];
  }
  else {
    return;
  }
  [((DKActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getConversationActorWithAMPeer:peer])) sendWithId:[[AMMessage alloc] initWithLong:rid withLong:time withLong:time withInt:[self myUid] withAMMessageStateEnum:AMMessageStateEnum_get_PENDING() withImActorModelEntityContentAbsContent:content]];
  [self requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestSendMessage alloc] initWithImActorModelApiOutPeer:outPeer withLong:rid withImActorModelApiMessageContent:outContent] withAMRpcCallback:[[ImActorModelModulesSenderSenderActor_$1 alloc] init]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSenderSenderActor)

@implementation ImActorModelModulesSenderSenderActor_SendMessage

- (instancetype)initWithAMPeer:(AMPeer *)peer
withImActorModelEntityContentAbsContent:(ImActorModelEntityContentAbsContent *)content {
  if (self = [super init]) {
    self->peer_ = peer;
    self->content_ = content;
  }
  return self;
}

- (AMPeer *)getPeer {
  return peer_;
}

- (ImActorModelEntityContentAbsContent *)getContent {
  return content_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesSenderSenderActor_SendMessage *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->content_ = content_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSenderSenderActor_SendMessage)

@implementation ImActorModelModulesSenderSenderActor_MessageSent

- (instancetype)initWithLong:(jlong)rid
                    withLong:(jlong)date {
  if (self = [super init]) {
    self->rid_ = rid;
    self->date_ = date;
  }
  return self;
}

- (jlong)getRid {
  return rid_;
}

- (jlong)getDate {
  return date_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesSenderSenderActor_MessageSent *)other {
  [super copyAllFieldsTo:other];
  other->rid_ = rid_;
  other->date_ = date_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSenderSenderActor_MessageSent)

@implementation ImActorModelModulesSenderSenderActor_$1

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSeqDate *)response {
}

- (void)onErrorWithAMRpcException:(AMRpcException *)e {
}

- (instancetype)init {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSenderSenderActor_$1)
