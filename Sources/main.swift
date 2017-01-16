import CGLFW
import GLFW


func main() {
    guard let window = glfw.Window(width: 800, height: 600) else {
        return
    }
    
	while !window.shouldClose {
        glfw.pollEvents()
	}
}

glfw.initialize()
defer { glfw.terminate() }
main()

