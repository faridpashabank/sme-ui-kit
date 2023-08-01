// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

public let package = Package(
    name: "PashaKit",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "PashaKit", targets: ["PashaKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/RedMadRobot/input-mask-ios.git", exact: "6.1.0")
    ],
    targets: [
        .target(name: "PashaKit", dependencies: [
            .product(name: "InputMask", package: "input-mask-ios")
        ], // path: "Sources",
            resources: [
                .process("Fonts/SFProDisplayBold.otf"),
                .process("Fonts/SFProDisplayLight.otf"),
                .process("Fonts/SFProDisplayRegular.otf"),
                .process("Fonts/SFProDisplayMedium.otf"),
                .process("Fonts/SFProDisplaySemibold.otf"),
//                .copy("settings.plist")
            ]
        ),
//        .target(name: "PashaKitFonts", dependencies: [], resources: [.process("Fonts")]),
        .testTarget(name: "PashaKitTests", dependencies: ["PashaKit"]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
