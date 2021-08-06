// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SwiftConvenience",
    products: [
      .library(
        name: "SwiftConvenience",
        targets: ["SwiftConvenience"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftConvenience",
            dependencies: []),
        .testTarget(
            name: "SwiftConvenienceTests",
            dependencies: ["SwiftConvenience"]),
    ]
)
