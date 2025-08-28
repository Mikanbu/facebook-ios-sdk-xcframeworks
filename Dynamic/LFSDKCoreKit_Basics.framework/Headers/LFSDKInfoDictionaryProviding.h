/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <LFSDKLinking.h>

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// An internal protocol used for accessing bundles
NS_SWIFT_NAME(InfoDictionaryProviding)
@protocol LFSDKInfoDictionaryProviding

@property (nullable, readonly, copy) NSDictionary<NSString *, id> *fb_infoDictionary;
@property (nullable, readonly, copy) NSString *fb_bundleIdentifier;

- (nullable id)fb_objectForInfoDictionaryKey:(NSString *)key
NS_SWIFT_NAME(fb_object(forInfoDictionaryKey:));

@end

FB_LINK_CATEGORY_INTERFACE(NSBundle, InfoDictionaryProviding)
@interface NSBundle (InfoDictionaryProviding) <LFSDKInfoDictionaryProviding>

@end

NS_ASSUME_NONNULL_END
