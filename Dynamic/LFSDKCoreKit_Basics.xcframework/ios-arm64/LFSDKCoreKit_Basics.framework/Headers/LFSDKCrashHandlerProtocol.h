/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

NS_ASSUME_NONNULL_BEGIN

@protocol LFSDKCrashObserving;

NS_SWIFT_NAME(CrashHandlerProtocol)
@protocol LFSDKCrashHandler

- (void)addObserver:(id<LFSDKCrashObserving>)observer;
- (void)clearCrashReportFiles;
- (void)saveException:(NSException *)exception;

@end

NS_ASSUME_NONNULL_END
