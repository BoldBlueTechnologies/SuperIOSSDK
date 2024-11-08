// swift-tools-version:6.0
import PackageDescription

// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SuperSDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SuperSDK",
            targets: ["SuperSDK"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SuperSDK"),
        .testTarget(
            name: "SuperSDKTests",
            dependencies: ["SuperSDK"]
        ),
    ]
)
