import PackageDescription

var dependencies: [Package.Dependency] = []

dependencies.append(.Package(url: "https://github.com/swift-gl/SGLCore.git", majorVersion: 0))

#if os(Linux) || os(macOS)
dependencies.append(.Package(url: "https://github.com/swift-gl/SGLFW.git", majorVersion: 0))
dependencies.append(.Package(url: "https://github.com/swift-gl/SOGL.git", majorVersion: 0))
#elseif os(iOS)
dependencies.append(.Package(url: "https://github.com/swift-gl/SGLiOS.git", majorVersion: 0))
dependencies.append(.Package(url: "https://github.com/swift-gl/SOGL.git", majorVersion: 0))
#endif

let package = Package(
    name: "App", 
	dependencies: dependencies
)
