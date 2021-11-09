// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "swiftui-extensions",
	defaultLocalization: "en",
	platforms: [
		.iOS(.v13),
//		.macOS(.v10_15),
//		.tvOS(.v13),
//		.watchOS(.v6)
	],
	products: [
		.library(name: "TwitterUI", targets: ["TwitterUI"]),
		.library(name: "SwiftUIX", targets: ["SwiftUIExtensions"])
	], targets: [
		.target(name: "TwitterUI", dependencies: []),
		.target(name: "SwiftUIExtensions", dependencies: []),
		.testTarget(name: "SwiftUIExtensionsTests", dependencies: ["SwiftUIExtensions"])
	], swiftLanguageVersions: [.version("5.5")]
)
