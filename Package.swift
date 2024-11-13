// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SuperSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SuperSDK",
            targets: ["SuperSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.10.0")),
        .package(url: "https://github.com/airbnb/lottie-spm.git", exact: "4.1.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SuperSDK",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "Lottie", package: "lottie-spm"),
            ]
        ),
        .testTarget(
            name: "SuperSDKTests",
            dependencies: ["SuperSDK"]
        ),
    ]
)
