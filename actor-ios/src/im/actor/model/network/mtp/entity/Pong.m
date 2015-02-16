//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/Pong.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/network/mtp/entity/Pong.h"
#include "im/actor/model/util/DataInput.h"
#include "im/actor/model/util/DataOutput.h"
#include "java/io/IOException.h"

@interface MTPong () {
 @public
  jlong randomId_;
}
@end

@implementation MTPong

- (instancetype)initWithAMDataInput:(AMDataInput *)stream {
  return [super initWithAMDataInput:stream];
}

- (instancetype)initWithLong:(jlong)randomId {
  if (self = [super init]) {
    self->randomId_ = randomId;
  }
  return self;
}

- (jlong)getRandomId {
  return randomId_;
}

- (jbyte)getHeader {
  return MTPong_HEADER;
}

- (void)writeBodyWithAMDataOutput:(AMDataOutput *)bs {
  [((AMDataOutput *) nil_chk(bs)) writeLongWithLong:randomId_];
}

- (void)readBodyWithAMDataInput:(AMDataInput *)bs {
  randomId_ = [((AMDataInput *) nil_chk(bs)) readLong];
}

- (NSString *)description {
  return JreStrcat("$JC", @"Pong{", randomId_, '}');
}

- (void)copyAllFieldsTo:(MTPong *)other {
  [super copyAllFieldsTo:other];
  other->randomId_ = randomId_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTPong)
