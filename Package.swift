// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "QDPublisherWrapper",
    platforms: [.iOS(SupportedPlatform.IOSVersion.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "QDPublisherWrapper",
            targets: ["QDPublisherWrapper"]
        )

    ],
    dependencies: [
        .package(name: "QDPublisher", url: "https://github.com/syaifulQ/QDPublisher.git", from: "0.0.8"),
        .package(name: "Gzip", url: "https://github.com/1024jp/GzipSwift.git", from: "5.1.0")
    ],
    targets: [
        .target(name: "QDPublisherWrapper", dependencies: ["QDPublisher", "Gzip"])
    ]
)
