// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SmartdigimktCNDomainSwitchAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "SmartdigimktCNDomainSwitchAdapter",
            targets: [
                "SmartdigimktCNDomainSwitchAdapter",
                "SmartdigimktCNDomainSwitchAdapterSupport"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/TakuMediation-packages/SmartdigimktCNSDK_SPM.git",
            exact: "6.5.80"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SmartdigimktCNDomainSwitchAdapter",
            url: "http://sz-kuying-sdk.oss-cn-shenzhen.aliyuncs.com/pkgs/SDK/iOS/DomainSwitch/v6.5.66/SmartdigimktCNDomainSwitchAdapter.zip",
            checksum: "2cbb10f1b2a6f45e736d1fc634cabcf015a93988bd1a38ecf09f2a0f7ec09e70"
        ),
        // 包装 target：同时依赖 Adapter 的 binary 和 CNSDK 的 product
        .target(
            name: "SmartdigimktCNDomainSwitchAdapterSupport",
            dependencies: [
                "SmartdigimktCNDomainSwitchAdapter",
                .product(
                    name: "SmartdigimktCNSDK",
                    package: "SmartdigimktCNSDK_SPM"
                )
            ]
        )
    ]
)
