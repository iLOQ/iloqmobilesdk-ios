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
            url: "https://repository.iloq.com:8444/repository/iLOQ_mobile_sdk_public/com/iloq/ios/iLOQMobileSDK/3.1.1987/iLOQMobileSDK-3.1.1987.zip",
            checksum: "5bc59820cdcc18649237ef30391660206f9007d0d59f448db9c3a205dcda23e5"
        ),
        .binaryTarget(
            name: "iLOQLockCommunicationSDKBinary",
            url: "https://repository.iloq.com:8444/repository/iLOQ_mobile_sdk_public/com/iloq/ios/iLOQLockCommunicationSDK/1.0.194/iLOQLockCommunicationSDK-1.0.194.zip",
            checksum: "b6ad5b3d529625753b6626709b908bf2929b7ba2e78b48b92c679e33eed32be4")
    ]
)
