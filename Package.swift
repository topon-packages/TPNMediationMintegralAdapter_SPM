// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationMintegralAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationMintegralAdapter",
            targets: ["TPNMediationMintegralAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.1.9")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkMintegralAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkMintegralAdapter/80109.2.10/AnyThinkMintegralAdapter-80109.2.10.zip",
            checksum: "ad00a1c8054a0194a30720662c46646f5e81613c49575bdce831a59776f92d13"
        ),
        .target(
            name: "TPNMediationMintegralAdapterTarget",
            dependencies: [
                "AnyThinkMintegralAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package")
            ],
            path: "Sources/TPNMediationMintegralAdapterTarget"
        )
    ]
)