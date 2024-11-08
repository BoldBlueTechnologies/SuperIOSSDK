// swift-tools-version:6.0
import PackageDescription

// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "ExampleLibrary",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ExampleLibrary",
            targets: ["ExampleLibrary"]),
    ],
    targets: [
        .target(
            name: "ExampleLibrary",
            dependencies: []),  // Archivos fuente para el target principal
        // Archivos de prueba para el target de pruebas
    ]
)
