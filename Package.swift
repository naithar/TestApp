import PackageDescription

let package = Package(
    name: "GLFW",
    targets: [
        Target(name: "CGLFW", dependencies: []),
        Target(name: "GLFW", dependencies: ["CGLFW"]),
    ], dependencies: [
    ]
)
