// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Wunderkind",
    dependencies: [
        .package(
            url: "https://github.com/SnapKit/SnapKit",
            .upToNextMajor(from: "5.0.1")
        )
    ]
)
