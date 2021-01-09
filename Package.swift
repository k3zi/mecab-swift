// swift-tools-version:5.2
import PackageDescription


#if os(macOS)
	let CMeCabURL = "https://github.com/k3zi/CMeCab-OSX.git"
#else
	let CMeCabURL = "https://github.com/k3zi/CMeCab.git"
#endif

let package = Package(
    name: "MeCab",
    products: [
        .library(name: "MeCab", targets: ["MeCab"])
    ],
    dependencies: [
        .package(name: "CMeCab", url: CMeCabURL, from: "1.0.0"),
    ],
    targets: [
        .target(name: "MeCab"),
        .testTarget(name: "MeCabTests", dependencies: ["MeCab"])
    ]
)
