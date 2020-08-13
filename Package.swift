// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "SwiftUILib-NewComponent",
  platforms: [ .iOS(.v13), .macOS(.v10_15) ],
  products: [
    .library(
      name: "SwiftUILib.NewComponent",
      targets: ["SwiftUILib_NewComponent"]),
  ],
  targets: [
    .target(
      name: "SwiftUILib_NewComponent",
      path: "src"),
    .testTarget(
      name: "SwiftUILib-NewComponentTests",
      dependencies: ["SwiftUILib_NewComponent"],
      path: "test"),
  ]
)
