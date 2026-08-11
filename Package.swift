// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "chaos",
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.59.0"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.89.0"),
        .package(url: "https://github.com/vapor/fluent.git", from: "4.9.0"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.5.3"),
        .package(url: "https://github.com/apple/swift-crypto.git", from: "4.5.1"),
        .package(url: "https://github.com/apple/swift-collections.git", from: "1.0.5"),
        .package(url: "https://github.com/apple/swift-algorithms.git", from: "1.2.0"),
        .package(url: "https://github.com/apple/swift-numerics.git", from: "1.0.2"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.3.0"),
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.20.0")
    ],
    targets: [
        .executableTarget(
            name: "chaos",
            dependencies: [
                .product(name: "NIOCore", package: "swift-nio"),
                .product(name: "Vapor", package: "vapor"),
                .product(name: "Fluent", package: "fluent")
            ]
        )
    ]
)
