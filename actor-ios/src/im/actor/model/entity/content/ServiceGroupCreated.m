//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/content/ServiceGroupCreated.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/ServiceGroupCreated.h"
#include "java/io/IOException.h"

@interface ImActorModelEntityContentServiceGroupCreated () {
 @public
  NSString *groupTitle_;
}
- (instancetype)init;
@end

J2OBJC_FIELD_SETTER(ImActorModelEntityContentServiceGroupCreated, groupTitle_, NSString *)

@implementation ImActorModelEntityContentServiceGroupCreated

+ (ImActorModelEntityContentServiceGroupCreated *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelEntityContentServiceGroupCreated_fromBytesWithByteArray_(data);
}

- (instancetype)initWithNSString:(NSString *)groupTitle {
  if (self = [super initWithNSString:JreStrcat("$$$", @"Group '", groupTitle, @"' created")]) {
    self->groupTitle_ = groupTitle;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (NSString *)getGroupTitle {
  return groupTitle_;
}

- (ImActorModelEntityContentAbsContent_ContentTypeEnum *)getContentType {
  return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_SERVICE_CREATED();
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  [super parseWithBSBserValues:values];
  groupTitle_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:10];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [super serializeWithBSBserWriter:writer];
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:10 withNSString:groupTitle_];
}

- (void)copyAllFieldsTo:(ImActorModelEntityContentServiceGroupCreated *)other {
  [super copyAllFieldsTo:other];
  other->groupTitle_ = groupTitle_;
}

@end

ImActorModelEntityContentServiceGroupCreated *ImActorModelEntityContentServiceGroupCreated_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelEntityContentServiceGroupCreated_init();
  return ((ImActorModelEntityContentServiceGroupCreated *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelEntityContentServiceGroupCreated alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityContentServiceGroupCreated)
