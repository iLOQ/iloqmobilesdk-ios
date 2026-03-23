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
            url: "https://repository.iloq.com:8444/repository/iLOQ_mobile_sdk_public/com/iloq/ios/iLOQMobileSDK/3.3.2089/iLOQMobileSDK-3.3.2089.zip",
            checksum: "06371cf0933b85a9fb55fd32aeb9260fa18eb365a7fc1f665925589e0268c363"),
        .binaryTarget(
            name: "iLOQLockCommunicationSDKBinary",
            url: "https://repository.iloq.com:8444/repository/iLOQ_mobile_sdk_public/com/iloq/ios/iLOQLockCommunicationSDK/1.3.268/iLoqLockCommunicationSDK-1.3.268.zip",
            checksum: "8fda7ccbfa64f872935eb0333e95ff03436efd34ff2e582887314b3e07a1ced6")
    ]
)
