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
            url: "https://repository.iloq.com:8444/repository/iLOQ_mobile_sdk_public/com/iloq/ios/iLOQMobileSDK/3.4.2208/iLOQMobileSDK-3.4.2208.zip",
            checksum: "628bbde052e35da88544919dd4306c00810e4f4768a6b2571e6c0854e7d9dfbc"),
        .binaryTarget(
            name: "iLOQLockCommunicationSDKBinary",
            url: "https://repository.iloq.com:8444/repository/iLOQ_mobile_sdk_public/com/iloq/ios/iLOQLockCommunicationSDK/1.5.426/iLOQLockCommunicationSDK-1.5.426.zip",
            checksum: "379340fbb1c3479a86bf93d5d52bba4aae3a014c7f7cb25d305883ed3e7d402b")
    ]
)
