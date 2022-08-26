// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "opencv2",
  platforms: [
        .macOS(.v10_12), .iOS(.v9)
  ],
  products: [
      .library(
          name: "opencv2",
          targets: ["opencv2"])
  ],
  targets: [
      .binaryTarget(name: "opencv2",
        url: "https://github.com/oursky/opencv/releases/download/4.6.0/opencv2.xcframework.zip",
        checksum: "561eafb11ef915d4fd06c588b0825741f1a450ec345808bab854290c3ef16528"
    )
  ]
)
