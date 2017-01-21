import PackageDescription

var dependencies: [Package.Dependency] = []

#if os(Linux) || os(macOS)
dependencies.append(.Package(url: "https://github.com/naithar/GLFW.git", majorVersion: 0))
dependencies.append(.Package(url: "https://github.com/naithar/OpenGL.git", majorVersion: 0))
#elseif os(iOS)
dependencies.append(.Package(url: "https://github.com/naithar/OpenGL.git", majorVersion: 0))
#endif

let package = Package(
    name: "App", 
	dependencies: dependencies
)
