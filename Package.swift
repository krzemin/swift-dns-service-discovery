// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-dns-service-discovery",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DNSServiceDiscovery",
            targets: ["DNSServiceDiscovery"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-service-discovery.git", from: "1.2.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DNSServiceDiscovery",
            dependencies: [
                .product(name: "ServiceDiscovery", package: "swift-service-discovery"),
            ]
        ),
        .testTarget(
            name: "DNSServiceDiscoveryTests",
            dependencies: ["DNSServiceDiscovery"]
        ),
    ]
)
