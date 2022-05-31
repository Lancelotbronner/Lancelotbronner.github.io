// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "Lancelotbronner's Hideout",
	platforms: [.macOS(.v12)],
	dependencies: [
		.package(url: "https://github.com/johnsundell/publish.git", from: "0.9.0")
	],
	targets: [
		.executableTarget(
			name: "Website",
			dependencies: [
				.product(name: "Publish", package: "publish"),
			],
			path: "Website"
		)
	]
)
