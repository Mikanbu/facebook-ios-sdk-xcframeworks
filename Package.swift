// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FacebookSDKXCFrameworks",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "FBSDKCoreKit", targets: ["FBSDKCoreKit"]),
        .library(name: "FBSDKLoginKit", targets: ["FBSDKLoginKit"]),
        .library(name: "FBSDKShareKit", targets: ["FBSDKShareKit"]),
        .library(name: "FBSDKGamingServicesKit", targets: ["FBSDKGamingServicesKit"]),
        .library(name: "FBAEMKit", targets: ["FBAEMKit"]),
        .library(name: "FBSDKCoreKit_Basics", targets: ["FBSDKCoreKit_Basics"]),
    ],
    targets: [
        .binaryTarget(name: "FBSDKCoreKit_Basics", path: "Dynamic/FBSDKCoreKit_Basics.xcframework"),
        .binaryTarget(name: "FBAEMKit", path: "Dynamic/FBAEMKit.xcframework"),
        .binaryTarget(name: "FBSDKCoreKit", path: "Dynamic/FBSDKCoreKit.xcframework"),
        .binaryTarget(name: "FBSDKLoginKit", path: "Dynamic/FBSDKLoginKit.xcframework"),
        .binaryTarget(name: "FBSDKShareKit", path: "Dynamic/FBSDKShareKit.xcframework"),
        .binaryTarget(name: "FBSDKGamingServicesKit", path: "Dynamic/FBSDKGamingServicesKit.xcframework"),
    ]
)
