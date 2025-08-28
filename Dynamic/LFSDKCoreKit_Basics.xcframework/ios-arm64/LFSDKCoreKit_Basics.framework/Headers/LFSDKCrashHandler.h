/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <Foundation/Foundation.h>

#import <LFSDKCrashHandlerProtocol.h>
#import <LFSDKCrashObserving.h>

NS_ASSUME_NONNULL_BEGIN

NS_SWIFT_NAME(CrashHandler)
@interface LFSDKCrashHandler : NSObject <LFSDKCrashHandler>

@property (class, nonatomic, readonly) LFSDKCrashHandler *shared;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

+ (void)disable;
+ (void)addObserver:(id<LFSDKCrashObserving>)observer;
+ (void)removeObserver:(id<LFSDKCrashObserving>)observer;
+ (void)clearCrashReportFiles;
+ (NSString *)getLFSDKVersion;
- (void)saveException:(NSException *)exception;

- (void)disable;

@end

NS_ASSUME_NONNULL_END
