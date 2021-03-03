// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Demo2",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "Dep", targets: ["Demodep"]),
        .library(name: "Calculator", targets: ["Demo", "Demodep"])
    ],
    targets: [
        .binaryTarget(name: "Demo", path: "Demo.xcframework"),
        .binaryTarget(name: "Demodep", path: "Demodep.xcframework")
    ]
)
