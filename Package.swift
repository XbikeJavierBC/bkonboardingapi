// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bkonboardingapi",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "bkonboardingapi",
            targets: [
                "bkonboardingapi"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/XbikeJavierBC/bksdkcore.git",
            branch: "main"
        )
    ],
    targets: [
        .target(
            name: "bkonboardingapi",
            dependencies: [
                "bksdkcore"
            ]
        ),
        .testTarget(
            name: "bkonboardingapiTests",
            dependencies: [
                "bkonboardingapi"
            ]
        ),
    ]
)
