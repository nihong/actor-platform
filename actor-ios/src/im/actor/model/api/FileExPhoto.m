//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/FileExPhoto.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/FileExPhoto.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiFileExPhoto () {
 @public
  jint w_;
  jint h_;
}
@end

@implementation ImActorModelApiFileExPhoto

- (instancetype)initWithInt:(jint)w
                    withInt:(jint)h {
  if (self = [super init]) {
    self->w_ = w;
    self->h_ = h;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getW {
  return self->w_;
}

- (jint)getH {
  return self->h_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->w_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->h_ = [values getIntWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->w_];
  [writer writeIntWithInt:2 withInt:self->h_];
}

- (void)copyAllFieldsTo:(ImActorModelApiFileExPhoto *)other {
  [super copyAllFieldsTo:other];
  other->w_ = w_;
  other->h_ = h_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiFileExPhoto)
