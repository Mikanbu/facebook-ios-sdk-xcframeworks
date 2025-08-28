/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <Foundation/Foundation.h>

#import <LFSDKURLSessionProviding.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^ LFSDKURLSessionTaskBlock)(NSData *_Nullable responseData,
  NSURLResponse *_Nullable response,
  NSError *_Nullable error)
NS_SWIFT_NAME(UrlSessionTaskBlock);

NS_SWIFT_NAME(UrlSessionTask)
@interface LFSDKURLSessionTask : NSObject

@property (nonatomic, strong) id<LFSDKNetworkTask> task;
@property (atomic, readonly) NSURLSessionTaskState state;
@property (nonatomic, readonly, strong) NSDate *requestStartDate;
@property (nullable, nonatomic, copy) LFSDKURLSessionTaskBlock handler;
@property (nonatomic, assign) uint64_t requestStartTime;
@property (nonatomic, assign) NSUInteger loggerSerialNumber;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (nullable instancetype)initWithRequest:(NSURLRequest *)request
                             fromSession:(id<LFSDKURLSessionProviding>)session
                       completionHandler:(nullable LFSDKURLSessionTaskBlock)handler;

- (void)start;
- (void)cancel;

@end

NS_ASSUME_NONNULL_END
