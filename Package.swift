// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUITesting",
    dependencies: [
        .package(url: "https://github.com/nalexn/ViewInspector", .upToNextMajor(from: "0.10.1")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "tims-project",
            // ADDED DEPENDENCY PARAMETER BELOW
            dependencies: [
                .product(name: "ViewInspector", package: "ViewInspector")
            ]
        ),
    ]
)
