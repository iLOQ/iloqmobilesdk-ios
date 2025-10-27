// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "iLOQMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "iLOQMobileSDK", targets: ["iLOQMobileSDKTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/sqlcipher/SQLCipher.swift.git", from: "4.10.0")
    ],
    targets: [
        .target(
            name: "iLOQMobileSDKTarget",
            dependencies: [
                "iLOQMobileSDKBinary",
                "iLOQLockCommunicationSDKBinary",
                .product(name: "SQLCipher", package: "SQLCipher.swift")
            ]
        ),
        .binaryTarget(
            name: "iLOQMobileSDKBinary",
            url: "https://repository.iloq.com:8444/repository/iLOQ_mobile_sdk_public/com/iloq/ios/iLOQMobileSDK/3.1.1997/iLOQMobileSDK-3.1.1997.zip",
            checksum: "dadc03effb76139760d270b35f7ccd205536dfa1db6e8e9bf120f3d597a93145"),
        .binaryTarget(
            name: "iLOQLockCommunicationSDKBinary",
            url: "https://repository.iloq.com:8444/repository/iLOQ_mobile_sdk_public/com/iloq/ios/iLOQLockCommunicationSDK/1.0.194/iLOQLockCommunicationSDK-1.0.194.zip",
            checksum: "cb743fa672821b48b60e84e51ce6b3760f75e61c41abf3556a1273b9c39f2b73")
    ]
)
