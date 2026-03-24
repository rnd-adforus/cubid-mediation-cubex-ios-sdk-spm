// swift-tools-version:5.9
import PackageDescription

let versionInfo = "1.1.1"

let package = Package(
    name: "CubeXKit",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CubeXKit",
            targets: ["CubeXKitTarget"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "CubeXKit",
            url: "https://nexus.adforus.com/repository/cubid_iOS/CubeX/\(versionInfo)/CubeXKit.xcframework.zip",
            checksum: "8bd3e4cc02d16f947096b60e2f89f82b32dfd0d7814af36bf3364752116c0d6f"
        ),
        .target(
            name: "CubeXKitTarget",
            dependencies: [
                .target(name: "CubeXKit")
            ],
            path: "CubeXKitTarget"
        )
    ]
)
