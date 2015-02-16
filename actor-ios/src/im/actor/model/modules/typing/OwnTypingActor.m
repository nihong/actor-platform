//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/typing/OwnTypingActor.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/PeerType.h"
#include "im/actor/model/api/rpc/RequestTyping.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorTime.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/typing/OwnTypingActor.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

__attribute__((unused)) static void ImActorModelModulesTypingOwnTypingActor_onTypingWithAMPeer_(ImActorModelModulesTypingOwnTypingActor *self, AMPeer *peer);

@interface ImActorModelModulesTypingOwnTypingActor () {
 @public
  jlong lastTypingTime_;
}

- (void)onTypingWithAMPeer:(AMPeer *)peer;
@end

@interface ImActorModelModulesTypingOwnTypingActor_Typing () {
 @public
  AMPeer *peer_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesTypingOwnTypingActor_Typing, peer_, AMPeer *)

@implementation ImActorModelModulesTypingOwnTypingActor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  if (self = [super initWithImActorModelModulesModules:messenger]) {
    lastTypingTime_ = 0;
  }
  return self;
}

- (void)onTypingWithAMPeer:(AMPeer *)peer {
  ImActorModelModulesTypingOwnTypingActor_onTypingWithAMPeer_(self, peer);
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorModelModulesTypingOwnTypingActor_Typing class]]) {
    ImActorModelModulesTypingOwnTypingActor_onTypingWithAMPeer_(self, [((ImActorModelModulesTypingOwnTypingActor_Typing *) nil_chk(((ImActorModelModulesTypingOwnTypingActor_Typing *) check_class_cast(message, [ImActorModelModulesTypingOwnTypingActor_Typing class])))) getPeer]);
  }
  else {
    [self dropWithId:message];
  }
}

- (void)copyAllFieldsTo:(ImActorModelModulesTypingOwnTypingActor *)other {
  [super copyAllFieldsTo:other];
  other->lastTypingTime_ = lastTypingTime_;
}

@end

void ImActorModelModulesTypingOwnTypingActor_onTypingWithAMPeer_(ImActorModelModulesTypingOwnTypingActor *self, AMPeer *peer) {
  if (DKActorTime_currentTime() - self->lastTypingTime_ < ImActorModelModulesTypingOwnTypingActor_TYPING_DELAY) {
    return;
  }
  self->lastTypingTime_ = DKActorTime_currentTime();
  ImActorModelApiOutPeer *outPeer;
  if ([((AMPeer *) nil_chk(peer)) getPeerType] == AMPeerTypeEnum_get_PRIVATE()) {
    AMUser *user = [self getUserWithInt:[peer getPeerId]];
    if (user == nil) {
      return;
    }
    outPeer = [[ImActorModelApiOutPeer alloc] initWithImActorModelApiPeerTypeEnum:ImActorModelApiPeerTypeEnum_get_PRIVATE() withInt:[((AMUser *) nil_chk(user)) getUid] withLong:[user getAccessHash]];
  }
  else if ([peer getPeerType] == AMPeerTypeEnum_get_GROUP()) {
    return;
  }
  else {
    return;
  }
  [self requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestTyping alloc] initWithImActorModelApiOutPeer:outPeer withInt:0]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesTypingOwnTypingActor)

@implementation ImActorModelModulesTypingOwnTypingActor_Typing

- (instancetype)initWithAMPeer:(AMPeer *)peer {
  if (self = [super init]) {
    self->peer_ = peer;
  }
  return self;
}

- (AMPeer *)getPeer {
  return peer_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesTypingOwnTypingActor_Typing *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesTypingOwnTypingActor_Typing)
