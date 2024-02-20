// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleAnalytics",
    platforms: [
        .iOS(.v13), .macOS(.v11), .tvOS(.v14), .watchOS(.v7)
    ],
    products: [
        .library(name: "GoogleAnalytics", targets: ["GoogleAnalytics", "_GoogleAnalyticsStub"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "GoogleAnalytics",
            path: "Frameworks/GoogleAnalytics.xcframework"
        ),
        .target(name: "_GoogleAnalyticsStub")
    ],
    swiftLanguageVersions: [.v5]
)