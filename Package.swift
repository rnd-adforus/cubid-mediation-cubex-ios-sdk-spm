// swift-tools-version:5.9
import PackageDescription

let versionInfo = "1.2.2"

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
            checksum: "88bf3f2e74223b844ca6674acbf2a33e6b1c50d09f646128fd68a2691eef730c"
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
