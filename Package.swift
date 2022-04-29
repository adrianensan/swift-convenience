// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "SwiftConvenience",
    platforms: [.iOS(.v15), .macOS(.v12), .tvOS(.v15), .watchOS(.v8), .macCatalyst(.v15)],
    products: [
      .library(
        name: "SwiftConvenience",
        targets: ["SwiftConvenience"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftConvenience",
            dependencies: [],
            swiftSettings: [.define("APPLICATION_EXTENSION_API_ONLY")]),
        .testTarget(
            name: "SwiftConvenienceTests",
            dependencies: ["SwiftConvenience"]),
    ]
)
