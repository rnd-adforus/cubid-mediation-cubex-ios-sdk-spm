// swift-tools-version:5.9
import PackageDescription

let versionInfo = "1.1.1"

//
let package = Package(
    name: "CubeXKit",
    platforms: [
        .iOS(.v14) // SDK가 지원하는 최소 iOS 버전에 맞게 수정하세요.
    ],
    products: [
        // 앱에서 import MySDK 로 사용할 이름을 정의합니다.
        .library(
            name: "CubeXKit",
            targets: ["CubeXKit"]
        ),
    ],
    dependencies: [
        // 만약 이 SDK가 내부적으로 다른 SPM 패키지를 쓴다면 여기에 추가합니다.
        // 예: .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0")
    ],
    targets: [
        // Nexus에 올려둔 xcframework.zip을 가리키는 핵심 설정입니다.
        .binaryTarget(
            name: "CubeXKit",
            url: "https://nexus.adforus.com/repository/cubid_iOS/CubeX/\(versionInfo)/CubeXKit.xcframework.zip",
            checksum: "8bd3e4cc02d16f947096b60e2f89f82b32dfd0d7814af36bf3364752116c0d6f"
        )
    ]
)
