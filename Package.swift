// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-14"

let package = Package(
    name: "BNBEyes",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBEyes",
            targets: [
                "BNBEyes_Target",
                "BNBEyes_BNBSdkCore_Target",
                "BNBEyes_BNBEffectPlayer_Target",
                "BNBEyes_BNBScripting_Target",
                "BNBEyes_BNBFaceTracker_Target"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/PiotrBanuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBEyes_Target",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-58-g46079e7d74/BNBEyes.zip",
            checksum: "e64c04a3474860d158660d61be5f366592b60dd3a727dde3931f1c297236d243"
        ),
        .target(
            name: "BNBEyes_BNBSdkCore_Target",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBEyes_BNBEffectPlayer_Target",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBEyes_BNBScripting_Target",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBEyes_BNBFaceTracker_Target",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
    ]
)
