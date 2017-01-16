import CGLFW
import GLFW

import COpenGLOSX
import SwiftOpenGL

func main() {
    glfw.initialize()
    defer { glfw.terminate() }
    
//    glfwWindowHint(GLFW_VISIBLE, 1)
//    guard let window2 = glfw.Window(width: 800, height: 600) else {
//        return
//    }
    
//    glfwWindowHint(GLFW_VISIBLE, 1)
    guard let window1 = glfw.Window(width: 600, height: 600, title: "second") else {
        return
    }
    
    window1.callbacks.closed = { window in
        print("sas")
    }
    
    window1.makeCurrent()
    
	while !window1.shouldClose {
        glfw.pollEvents()
        
        let size = window1.framebuffer.size
        gl.viewport(x: 0, y: 0, width: size.width, height: size.height)
        gl.clear(color: gl.Color(red: 0.2, green: 0.4, blue: 0.3, alpha: 1))
        gl.clear([.buffer, .depth])
        
        gl.matrixMode(.projection)
        gl.loadIdentity()
        gl.ortho(left: -1, right: 10, bottom: 10, top: -1, near: 0, far: 1)
        
        gl.begin(.triangles) {
            glColor3f(0.1, 0.2, 0.3);
            glVertex3f(0, 0, 0);
            glVertex3f(2, 0, 0);
            glVertex3f(0, 2, 0);
        }
        
        window1.swapBuffers()
	}
}

main()

