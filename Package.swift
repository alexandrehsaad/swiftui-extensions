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
		.library(name: "SwiftUIX", targets: ["SwiftUIX"])
	], targets: [
		.target(name: "SwiftUIX", dependencies: []),
		.testTarget(name: "SwiftUIXTests", dependencies: ["SwiftUIX"])
	], swiftLanguageVersions: [.version("5.5")]
)
