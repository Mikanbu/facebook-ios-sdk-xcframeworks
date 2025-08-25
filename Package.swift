// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "facebook-ios-sdk-xcframeworks",
    platforms: [.iOS(.v12)],
    products: [
        // Base dependencies - these should be imported individually when needed
        .library(name: "FBSDKCoreKit_Basics", targets: ["FBSDKCoreKit_Basics"]),
        .library(name: "FBAEMKit", targets: ["FBAEMKit"]),
        
        // Main products - these include their dependencies automatically
        .library(name: "FBSDKCoreKit", targets: ["FBSDKCoreKit", "FBAEMKit", "FBSDKCoreKit_Basics"]),
        .library(name: "FBSDKLoginKit", targets: ["FBSDKLoginKit", "FBSDKCoreKit", "FBAEMKit", "FBSDKCoreKit_Basics"]),
        .library(name: "FBSDKShareKit", targets: ["FBSDKShareKit", "FBSDKCoreKit", "FBAEMKit", "FBSDKCoreKit_Basics"]),
        .library(name: "FBSDKGamingServicesKit", targets: ["FBSDKGamingServicesKit", "FBSDKCoreKit", "FBAEMKit", "FBSDKCoreKit_Basics"]),
        
        // Alternative product names for different SDK versions
        .library(name: "FacebookCore", targets: ["FBSDKCoreKit", "FBAEMKit", "FBSDKCoreKit_Basics"]),
        .library(name: "FacebookLogin", targets: ["FBSDKLoginKit", "FBSDKCoreKit", "FBAEMKit", "FBSDKCoreKit_Basics"]),
        .library(name: "FacebookShare", targets: ["FBSDKShareKit", "FBSDKCoreKit", "FBAEMKit", "FBSDKCoreKit_Basics"]),
        .library(name: "FacebookGamingServices", targets: ["FBSDKGamingServicesKit", "FBSDKCoreKit", "FBAEMKit", "FBSDKCoreKit_Basics"]),
    ],
    targets: [
        // Binary targets pointing to your custom builds
        .binaryTarget(name: "FBSDKCoreKit_Basics", path: "Dynamic/FBSDKCoreKit_Basics.xcframework"),
        .binaryTarget(name: "FBAEMKit", path: "Dynamic/FBAEMKit.xcframework"),
        .binaryTarget(name: "FBSDKCoreKit", path: "Dynamic/FBSDKCoreKit.xcframework"),
        .binaryTarget(name: "FBSDKLoginKit", path: "Dynamic/FBSDKLoginKit.xcframework"),
        .binaryTarget(name: "FBSDKShareKit", path: "Dynamic/FBSDKShareKit.xcframework"),
        .binaryTarget(name: "FBSDKGamingServicesKit", path: "Dynamic/FBSDKGamingServicesKit.xcframework"),
    ]
)
