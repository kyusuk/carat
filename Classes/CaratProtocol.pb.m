// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "CaratProtocol.pb.h"

@implementation CaratProtocolRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [CaratProtocolRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = [registry retain];
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface Sample ()
@property int32_t processId;
@property (retain) NSString* processName;
@end

@implementation Sample

- (BOOL) hasProcessId {
  return !!hasProcessId_;
}
- (void) setHasProcessId:(BOOL) value {
  hasProcessId_ = !!value;
}
@synthesize processId;
- (BOOL) hasProcessName {
  return !!hasProcessName_;
}
- (void) setHasProcessName:(BOOL) value {
  hasProcessName_ = !!value;
}
@synthesize processName;
- (void) dealloc {
  self.processName = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.processId = 0;
    self.processName = @"";
  }
  return self;
}
static Sample* defaultSampleInstance = nil;
+ (void) initialize {
  if (self == [Sample class]) {
    defaultSampleInstance = [[Sample alloc] init];
  }
}
+ (Sample*) defaultInstance {
  return defaultSampleInstance;
}
- (Sample*) defaultInstance {
  return defaultSampleInstance;
}
- (BOOL) isInitialized {
  if (!self.hasProcessId) {
    return NO;
  }
  if (!self.hasProcessName) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasProcessId) {
    [output writeInt32:1 value:self.processId];
  }
  if (self.hasProcessName) {
    [output writeString:2 value:self.processName];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasProcessId) {
    size += computeInt32Size(1, self.processId);
  }
  if (self.hasProcessName) {
    size += computeStringSize(2, self.processName);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (Sample*) parseFromData:(NSData*) data {
  return (Sample*)[[[Sample builder] mergeFromData:data] build];
}
+ (Sample*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Sample*)[[[Sample builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (Sample*) parseFromInputStream:(NSInputStream*) input {
  return (Sample*)[[[Sample builder] mergeFromInputStream:input] build];
}
+ (Sample*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Sample*)[[[Sample builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Sample*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (Sample*)[[[Sample builder] mergeFromCodedInputStream:input] build];
}
+ (Sample*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Sample*)[[[Sample builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Sample_Builder*) builder {
  return [[[Sample_Builder alloc] init] autorelease];
}
+ (Sample_Builder*) builderWithPrototype:(Sample*) prototype {
  return [[Sample builder] mergeFrom:prototype];
}
- (Sample_Builder*) builder {
  return [Sample builder];
}
@end

@interface Sample_Builder()
@property (retain) Sample* result;
@end

@implementation Sample_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[Sample alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (Sample_Builder*) clear {
  self.result = [[[Sample alloc] init] autorelease];
  return self;
}
- (Sample_Builder*) clone {
  return [Sample builderWithPrototype:result];
}
- (Sample*) defaultInstance {
  return [Sample defaultInstance];
}
- (Sample*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (Sample*) buildPartial {
  Sample* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (Sample_Builder*) mergeFrom:(Sample*) other {
  if (other == [Sample defaultInstance]) {
    return self;
  }
  if (other.hasProcessId) {
    [self setProcessId:other.processId];
  }
  if (other.hasProcessName) {
    [self setProcessName:other.processName];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (Sample_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (Sample_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setProcessId:[input readInt32]];
        break;
      }
      case 18: {
        [self setProcessName:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasProcessId {
  return result.hasProcessId;
}
- (int32_t) processId {
  return result.processId;
}
- (Sample_Builder*) setProcessId:(int32_t) value {
  result.hasProcessId = YES;
  result.processId = value;
  return self;
}
- (Sample_Builder*) clearProcessId {
  result.hasProcessId = NO;
  result.processId = 0;
  return self;
}
- (BOOL) hasProcessName {
  return result.hasProcessName;
}
- (NSString*) processName {
  return result.processName;
}
- (Sample_Builder*) setProcessName:(NSString*) value {
  result.hasProcessName = YES;
  result.processName = value;
  return self;
}
- (Sample_Builder*) clearProcessName {
  result.hasProcessName = NO;
  result.processName = @"";
  return self;
}
@end

@interface Samples ()
@property (retain) NSMutableArray* mutableSampleList;
@end

@implementation Samples

@synthesize mutableSampleList;
- (void) dealloc {
  self.mutableSampleList = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
  }
  return self;
}
static Samples* defaultSamplesInstance = nil;
+ (void) initialize {
  if (self == [Samples class]) {
    defaultSamplesInstance = [[Samples alloc] init];
  }
}
+ (Samples*) defaultInstance {
  return defaultSamplesInstance;
}
- (Samples*) defaultInstance {
  return defaultSamplesInstance;
}
- (NSArray*) sampleList {
  return mutableSampleList;
}
- (Sample*) sampleAtIndex:(int32_t) index {
  id value = [mutableSampleList objectAtIndex:index];
  return value;
}
- (BOOL) isInitialized {
  for (Sample* element in self.sampleList) {
    if (!element.isInitialized) {
      return NO;
    }
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  for (Sample* element in self.sampleList) {
    [output writeMessage:1 value:element];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  for (Sample* element in self.sampleList) {
    size += computeMessageSize(1, element);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (Samples*) parseFromData:(NSData*) data {
  return (Samples*)[[[Samples builder] mergeFromData:data] build];
}
+ (Samples*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Samples*)[[[Samples builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (Samples*) parseFromInputStream:(NSInputStream*) input {
  return (Samples*)[[[Samples builder] mergeFromInputStream:input] build];
}
+ (Samples*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Samples*)[[[Samples builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Samples*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (Samples*)[[[Samples builder] mergeFromCodedInputStream:input] build];
}
+ (Samples*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Samples*)[[[Samples builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Samples_Builder*) builder {
  return [[[Samples_Builder alloc] init] autorelease];
}
+ (Samples_Builder*) builderWithPrototype:(Samples*) prototype {
  return [[Samples builder] mergeFrom:prototype];
}
- (Samples_Builder*) builder {
  return [Samples builder];
}
@end

@interface Samples_Builder()
@property (retain) Samples* result;
@end

@implementation Samples_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[Samples alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (Samples_Builder*) clear {
  self.result = [[[Samples alloc] init] autorelease];
  return self;
}
- (Samples_Builder*) clone {
  return [Samples builderWithPrototype:result];
}
- (Samples*) defaultInstance {
  return [Samples defaultInstance];
}
- (Samples*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (Samples*) buildPartial {
  Samples* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (Samples_Builder*) mergeFrom:(Samples*) other {
  if (other == [Samples defaultInstance]) {
    return self;
  }
  if (other.mutableSampleList.count > 0) {
    if (result.mutableSampleList == nil) {
      result.mutableSampleList = [NSMutableArray array];
    }
    [result.mutableSampleList addObjectsFromArray:other.mutableSampleList];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (Samples_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (Samples_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        Sample_Builder* subBuilder = [Sample builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addSample:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (NSArray*) sampleList {
  if (result.mutableSampleList == nil) { return [NSArray array]; }
  return result.mutableSampleList;
}
- (Sample*) sampleAtIndex:(int32_t) index {
  return [result sampleAtIndex:index];
}
- (Samples_Builder*) replaceSampleAtIndex:(int32_t) index with:(Sample*) value {
  [result.mutableSampleList replaceObjectAtIndex:index withObject:value];
  return self;
}
- (Samples_Builder*) addAllSample:(NSArray*) values {
  if (result.mutableSampleList == nil) {
    result.mutableSampleList = [NSMutableArray array];
  }
  [result.mutableSampleList addObjectsFromArray:values];
  return self;
}
- (Samples_Builder*) clearSampleList {
  result.mutableSampleList = nil;
  return self;
}
- (Samples_Builder*) addSample:(Sample*) value {
  if (result.mutableSampleList == nil) {
    result.mutableSampleList = [NSMutableArray array];
  }
  [result.mutableSampleList addObject:value];
  return self;
}
@end

