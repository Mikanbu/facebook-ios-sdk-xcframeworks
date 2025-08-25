# Facebook iOS SDK - Custom XCFrameworks

Custom-built XCFrameworks for the Facebook iOS SDK, modified for production use with Swift Package Manager.

## Why This Package Exists

### The Problem
The official Facebook iOS SDK has limitations for teams that need:
- **Source code modifications** for business-specific requirements
- **Local builds** with custom changes that can't be upstreamed
- **CI/CD compatibility** without relying on remote binary downloads
- **Mixed Objective-C/Swift code** that Swift Package Manager doesn't support in source targets

### The Solution
This package provides:
- ✅ **Custom-built XCFrameworks** from modified Facebook SDK source
- ✅ **API-compatible** drop-in replacement for the official SDK
- ✅ **Swift Package Manager** support with proper dependency resolution
- ✅ **Local development** workflow for rapid iteration
- ✅ **Production-ready** builds for CI/CD pipelines

## Quick Start

### In your `Package.swift`:
```swift
dependencies: [
    .package(url: "https://github.com/Mikanbu/facebook-ios-sdk-xcframeworks", from: "1.0.1")
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "FacebookCore", package: "facebook-ios-sdk-xcframeworks"),
            .product(name: "FacebookLogin", package: "facebook-ios-sdk-xcframeworks"),
            // Add other modules as needed
        ]
    )
]
```

### Import statements remain the same:
```swift
import FBSDKCoreKit
import FBSDKLoginKit
import FBSDKShareKit
```

## Available Modules

| Product Name | Includes | Use Case |
|-------------|----------|----------|
| `FacebookCore` | FBSDKCoreKit + dependencies | Core Facebook functionality |
| `FacebookLogin` | FBSDKLoginKit + dependencies | Facebook Login |
| `FacebookShare` | FBSDKShareKit + dependencies | Facebook Sharing |
| `FacebookGamingServices` | FBSDKGamingServicesKit + dependencies | Facebook Gaming |

## Development Workflow

1. **Make changes** in the [source repository](https://github.com/facebook/facebook-ios-sdk)
2. **Build XCFrameworks** using the custom build script
3. **Update this package** with new XCFrameworks
4. **Test locally** using `.package(path: "...")` 
5. **Tag and release** for team/CI usage

## Technical Details

- **iOS 12.0+** minimum deployment target
- **Custom modifications** included in XCFramework builds
- **Dependency resolution** handled automatically by SPM
- **Binary distribution** for fast builds and IP protection

---

> **Note**: This is a custom build of the Facebook iOS SDK. For the official SDK, visit [facebook/facebook-ios-sdk](https://github.com/facebook/facebook-ios-sdk).