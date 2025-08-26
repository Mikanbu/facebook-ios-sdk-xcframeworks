// swift-tools-version:5.3
import PackageDescription


let package = Package(
    name: "facebook-ios-sdk-xcframeworks",
    platforms: [.iOS(.v12)],
    products: [
        // LF-prefixed base dependencies
        .library(name: "LFFBSDKCoreKit_Basics", targets: ["LFFBSDKCoreKit_Basics"]),
        .library(name: "LFFBAEMKit", targets: ["LFFBAEMKit"]),

        // Main products - these include their dependencies automatically
        .library(name: "LFFBSDKCoreKit", targets: ["LFFBSDKCoreKit", "LFFBAEMKit", "LFFBSDKCoreKit_Basics"]),
        .library(name: "LFFBSDKLoginKit", targets: ["LFFBSDKLoginKit", "LFFBSDKCoreKit", "LFFBAEMKit", "LFFBSDKCoreKit_Basics"]),
        .library(name: "LFFBSDKShareKit", targets: ["LFFBSDKShareKit", "LFFBSDKCoreKit", "LFFBAEMKit", "LFFBSDKCoreKit_Basics"]),
        .library(name: "LFFBSDKGamingServicesKit", targets: ["LFFBSDKGamingServicesKit", "LFFBSDKCoreKit", "LFFBAEMKit", "LFFBSDKCoreKit_Basics"]),

        // Alternative product names for different SDK versions
        .library(name: "LFFacebookCore", targets: ["LFFBSDKCoreKit", "LFFBAEMKit", "LFFBSDKCoreKit_Basics"]),
        .library(name: "LFFacebookLogin", targets: ["LFFBSDKLoginKit", "LFFBSDKCoreKit", "LFFBAEMKit", "LFFBSDKCoreKit_Basics"]),
        .library(name: "LFFacebookShare", targets: ["LFFBSDKShareKit", "LFFBSDKCoreKit", "LFFBAEMKit", "LFFBSDKCoreKit_Basics"]),
        .library(name: "LFFacebookGamingServices", targets: ["LFFBSDKGamingServicesKit", "LFFBSDKCoreKit", "LFFBAEMKit", "LFFBSDKCoreKit_Basics"]),
    ],
    targets: [
        // LF-prefixed binary targets
        .binaryTarget(name: "LFFBSDKCoreKit_Basics", path: "Dynamic/LFFBSDKCoreKit_Basics.xcframework"),
        .binaryTarget(name: "LFFBAEMKit", path: "Dynamic/LFFBAEMKit.xcframework"),
        .binaryTarget(name: "LFFBSDKCoreKit", path: "Dynamic/LFFBSDKCoreKit.xcframework"),
        .binaryTarget(name: "LFFBSDKLoginKit", path: "Dynamic/LFFBSDKLoginKit.xcframework"),
        .binaryTarget(name: "LFFBSDKShareKit", path: "Dynamic/LFFBSDKShareKit.xcframework"),
        .binaryTarget(name: "LFFBSDKGamingServicesKit", path: "Dynamic/LFFBSDKGamingServicesKit.xcframework"),
    ]
)
