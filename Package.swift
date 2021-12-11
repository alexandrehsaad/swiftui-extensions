// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "swiftui-extensions",
	defaultLocalization: "en",
	platforms: [
		.iOS(.v15),
		.macOS(.v12),
		.watchOS(.v8)
	],
	products: [
		.library(name: "SwiftUIX", targets: ["SwiftUIX"])
	], targets: [
		.target(name: "SwiftUIX", dependencies: []),
		.testTarget(name: "SwiftUIXTests", dependencies: ["SwiftUIX"])
	], swiftLanguageVersions: [.version("5.5")]
)
