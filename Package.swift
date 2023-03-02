// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "HDWalletKit",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "HDWalletKit", targets: ["HDWalletKit"]),
    ],
    dependencies: [
        // Dependencies ;declare other packages that this package depends on.
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift", from: "1.0.0"),
        .package(url: "https://github.com/Boilertalk/secp256k1.swift.git", from: "0.1.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "HDWalletKit",
            dependencies: ["CryptoSwift",
                           .product(name: "secp256k1", package: "secp256k1.swift")],
            path: "../HDWalletKit"),
    ]
)
