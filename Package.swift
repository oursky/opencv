// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "opencv2",
  platforms: [
        .macOS(.v10_12)
  ],
  products: [
      .library(
          name: "opencv2",
          targets: ["opencv2"])
  ],
  targets: [
      .binaryTarget(name: "opencv2",
        url: "https://github.com/oursky/opencv/releases/download/4.5.5/opencv2.xcframework.zip",
        checksum: "54cfa730bc016412200fe7a190e88aedfaf8b72e5faba9f0f83d250276aaefc0"
    )
  ]
)
