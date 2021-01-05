// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Secrets",
    dependencies: [
        .package(name: "ROT", url: "https://github.com/armadsen/ROT.swift.git", from: "0.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Secrets",
            dependencies: [
                .product(name: "ROT", package: "ROT")
            ]),
        .testTarget(
            name: "SecretsTests",
            dependencies: ["Secrets"]),
    ]
)