// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SmartdigimktCNDomainSwitchAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "SmartdigimktCNDomainSwitchAdapter",
            targets: ["SmartdigimktCNDomainSwitchAdapter"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SmartdigimktCNDomainSwitchAdapter",
            url: "https://topon-sdk-release.oss-cn-hangzhou.aliyuncs.com/Temp/juhesdk/KuYingSDK/6.5.80/KuYingSDK.zip",
            checksum: "db355954978972dc03657fb7cb52701eaff96eaa5dbb3c598e014de2af7ffc11"
        )
    ]
)
