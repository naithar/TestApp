import PackageDescription

let package = Package(
    name: "App", 
	dependencies: [
		.Package(url: "https://github.com/naithar/GLFW.git", majorVersion: 0),
		.Package(url: "https://github.com/naithar/OpenGL.git", majorVersion: 0)
    ]
)
