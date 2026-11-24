// swift-tools-version:5.9
import PackageDescription

let versionInfo = "1.3.0"

let package = Package(
    name: "CubeXKit",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CubeXKit",
            targets: ["CubeXKit", "CubeXKitResources"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "CubeXKit",
            url: "https://nexus.adforus.com/repository/cubid_iOS/CubeX/\(versionInfo)/CubeXKit-SPM.zip",
            checksum: "58ab560c946c202247247aaae301dae023b75483e2754047263af7cd80321d19"
        ),
        .target(
            name: "CubeXKitResources",
            path: "Sources/CubeXKitResources",
            resources: [
                .copy("CubeXResources.bundle")
            ]
        )
    ]
)
