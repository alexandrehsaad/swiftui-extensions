// swift-tools-version:5.6

import PackageDescription

let package = Package(
	name: "swiftui-extensions",
	defaultLocalization: "en",
	platforms: [
		.iOS(.v15),
		.watchOS(.v8)
	],
	products: [
		.library(name: "SwiftUIX", targets: ["SwiftUIX"])
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-docc-plugin.git", .upToNextMinor(from: "1.0.0"))
	],
	targets: [
		.target(name: "SwiftUIX", dependencies: []),
		.testTarget(name: "SwiftUIXTests", dependencies: ["SwiftUIX"])
	],
	swiftLanguageVersions: [.v5]
)
