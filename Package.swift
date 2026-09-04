// swift-tools-version:5.9
import PackageDescription

let versionInfo = "1.2.3"

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
            checksum: "f0384176129fc51119b64bd604e856e05f44c72c45b3bdc6f035f45339b89b43"
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
