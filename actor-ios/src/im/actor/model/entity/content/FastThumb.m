//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/content/FastThumb.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/content/FastThumb.h"
#include "java/io/IOException.h"

@interface ImActorModelEntityContentFastThumb () {
 @public
  jint w_;
  jint h_;
  IOSByteArray *image_;
}
- (instancetype)init;
@end

J2OBJC_FIELD_SETTER(ImActorModelEntityContentFastThumb, image_, IOSByteArray *)

@implementation ImActorModelEntityContentFastThumb

+ (ImActorModelEntityContentFastThumb *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelEntityContentFastThumb_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)w
                    withInt:(jint)h
              withByteArray:(IOSByteArray *)image {
  if (self = [super init]) {
    self->w_ = w;
    self->h_ = h;
    self->image_ = image;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getW {
  return w_;
}

- (jint)getH {
  return h_;
}

- (IOSByteArray *)getImage {
  return image_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  w_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  h_ = [values getIntWithInt:2];
  image_ = [values getBytesWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:w_];
  [writer writeIntWithInt:2 withInt:h_];
  [writer writeBytesWithInt:3 withByteArray:image_];
}

- (void)copyAllFieldsTo:(ImActorModelEntityContentFastThumb *)other {
  [super copyAllFieldsTo:other];
  other->w_ = w_;
  other->h_ = h_;
  other->image_ = image_;
}

@end

ImActorModelEntityContentFastThumb *ImActorModelEntityContentFastThumb_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelEntityContentFastThumb_init();
  return ((ImActorModelEntityContentFastThumb *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelEntityContentFastThumb alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityContentFastThumb)
