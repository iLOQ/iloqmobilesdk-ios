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
            url: "https://repository.iloq.com:8444/repository/iLOQ_mobile_sdk_public/com/iloq/ios/iLOQMobileSDK/3.5.2290/iLOQMobileSDK-3.5.2290.zip",
            checksum: "49d22703831dc28c0da98641ef0fa77a3fb3984b6f4d4a62cc12b24a093068d3"),
        .binaryTarget(
            name: "iLOQLockCommunicationSDKBinary",
            url: "https://repository.iloq.com:8444/repository/iLOQ_mobile_sdk_public/com/iloq/ios/iLOQLockCommunicationSDK/1.7.457/iLOQLockCommunicationSDK-1.7.457.zip",
            checksum: "6be4e2511f30d66060900295f4614b2b98f1d936b8ebe53f32399efdc903b57d")
    ]
)
