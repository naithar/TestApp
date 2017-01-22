//import COpenGLOSX
import CGLFW
import GLFW

import COpenGLOSX
import SwiftOpenGL


//import SGLFW
//import COpenGL
//import SGL
//import SGLRender
//import SGLEngine
//import SGLImage
//import SGLAudio
//import SGLUI
//
//sgl
//sglRender
//sglEngine
//sglCore

func draw() {
    gl.clear(color: gl.Color(red: 0.2, green: 0.6, blue: 0.3, alpha: 1))
    gl.clear([.color, .depth])
    
    gl.matrixMode(.projection)
    gl.loadIdentity()
    
//    gl.ortho(left: -10, right: 10, bottom: 10, top: -10, near: 0, far: 1)

//    gl.color(gl.Color(red: 0.1, green: 1, blue: 1, alpha: 1))
    
//    gl.begin(.quads) {
//        
//        gl.vertex(gl.Vertex(x: -10, y: -10))
//        gl.color(gl.Color(red: 0.1, green: 0.2, blue: 1, alpha: 1))
//        gl.vertex(gl.Vertex(x: 10, y: -10))
//        gl.color(gl.Color(red: 1, green: 0.2, blue: 0.3, alpha: 1))
//        gl.vertex(gl.Vertex(x: 10, y: 5))
//        gl.vertex(gl.Vertex(x: 5, y: 5))
//    }
    
    
    gl.color(gl.Color(red: 1, green: 0.2, blue: 0.3, alpha: 1))
    
    gl.draw(.quads) {
        gl.vertex(gl.Vertex(x: -1, y: -1))
        gl.vertex(gl.Vertex(x: 1, y: -1))
        gl.color(gl.Color(red: 0.1, green: 0.2, blue: 1))
        gl.vertex(gl.Vertex(x: 1, y: 0.5))
        gl.vertex(gl.Vertex(x: 0.5, y: 0.5))
    }
//    glBegin(GLenum(GL_FLOAT))
    
//    print(glGetError())
    
//    let q3: [GLfloat] = [
//        -1,-1,
//        1,-1,
//        1,0.5,
//        0.5,0.5
//    ]
//    
//    
//    
//    var col: [GLfloat] = [
//        0, 0, 0, 0,
//        0.1, 0.2, 1, 1,
//        1, 0.2, 0.3, 1,
//        1, 0.2, 0.3, 1
//    ]
//    
////    var color = [GLfloat]()
//    
//    gl.color(gl.Color(red: 1, green: 0.2, blue: 0.3, alpha: 1))
//    
//    gl.get(GLfloat.self, key: GLenum(GL_CURRENT_COLOR)) { color in
//        print(color)
//        col[0] = color[0]
//        col[1] = color[1]
//        col[2] = color[2]
//        col[3] = color[3]
//    }
//    
//    gl.get(GLboolean.self, key: GLenum(GL_BLEND)) { blend in
//        print(blend)
//    }
//    
//    
//    glEnableClientState(GLenum(GL_VERTEX_ARRAY));
//    glEnableClientState(GLenum(GL_COLOR_ARRAY));
//    
//    glVertexPointer(2, GLenum(GL_FLOAT), 0, q3);
//    glColorPointer(4, GLenum(GL_FLOAT), 0, col);
//    glDrawArrays(GLenum(GL_TRIANGLE_FAN),0,4);
//    
//    glDisableClientState(GLenum(GL_COLOR_ARRAY));
//    glDisableClientState(GLenum(GL_VERTEX_ARRAY));

//    glBegin(GL_QUADS);
//    glVertex2f(-10,-10);
//    glVertex2f(10,-10);
//    glVertex2f(10,10);
//    glVertex2f(-10,10);
//    glEnd();
    
    
    
//    var vbo: GLuint = 0
//    glGenBuffers(1, &vbo)
//    glBindBuffer(GLenum(GL_ARRAY_BUFFER), vbo)
//    glBufferData(GLenum(GL_ARRAY_BUFFER), MemoryLayout<[GLfloat]>.stride, vertixes, GLenum(GL_STATIC_DRAW))
//    
//    var vbi: GLuint = 0
//    glGenBuffers(1, &vbi)
//    glBindBuffer(GLenum(GL_ELEMENT_ARRAY_BUFFER), vbi)
//    glBufferData(GLenum(GL_ELEMENT_ARRAY_BUFFER), MemoryLayout<[GLubyte]>.stride, indexes, GLenum(GL_STATIC_DRAW))
//    
    
    
//    let vertexShader = glCreateShader(GLenum(GL_VERTEX_SHADER))
//    vertexShaderSource.withCString { value in
//        let length = vertexShaderSource.utf8.count
//        var s: UnsafePointer<GLchar>? = value.withMemoryRebound(to: GLchar.self, capacity: length) { $0 }
//        glShaderSource(vertexShader, 1, &s, nil)
//    }
//    glCompileShader(vertexShader)
//    // Check for compile time errors
//    var success:GLint = 0
//    var infoLog = [GLchar](repeating: 0, count: 512)
//    glGetShaderiv(vertexShader, GLenum(GL_COMPILE_STATUS), &success)
//    guard success == GL_TRUE else { return }
//    
//    // Fragment shader
//    let fragmentShader = glCreateShader(GLenum(GL_FRAGMENT_SHADER))
//    fragmentShaderSource.withCString { value in
//        let length = vertexShaderSource.utf8.count
//        var s: UnsafePointer<GLchar>? = value.withMemoryRebound(to: GLchar.self, capacity: length) { $0 }
//        glShaderSource(fragmentShader, 1, &s, nil)
//    }
//    glCompileShader(fragmentShader)
//    // Check for compile time errors
//    glGetShaderiv(fragmentShader, GLenum(GL_COMPILE_STATUS), &success)
//    guard success == GL_TRUE else { return }
//    
//    // Link shaders
//    let shaderProgram = glCreateProgram()
//    defer { glDeleteProgram(shaderProgram) }
//    glAttachShader(shaderProgram, vertexShader)
//    glAttachShader(shaderProgram, fragmentShader)
//    glLinkProgram(shaderProgram)
//    // Check for linking errors
//    glGetProgramiv(shaderProgram, GLenum(GL_LINK_STATUS), &success)
//    guard success == GL_TRUE else { return }
//    
//    // We no longer need these since they are in the shader program
//    glDeleteShader(vertexShader)
//    glDeleteShader(fragmentShader)
    
    ///////
    
    
    // Вывести треугольник!
//    glEnableClientState(GLenum(GL_VERTEX_ARRAY))
    
    
    
//    glGenBuffers(1, &_vertexBuffer);
//    glBindBuffer(GL_ARRAY_BUFFER, _vertexBuffer);
//    glBufferData(GL_ARRAY_BUFFER, sizeof(Vertices), Vertices, GL_STATIC_DRAW);
//    
//    glGenBuffers(1, &_indexBuffer);
//    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, _indexBuffer);
//    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(Indices), Indices, GL_STATIC_DRAW);
    
    
}

#if os(iOS)
    import UIKit
    import GLKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    class SwiftOpenGLViewController: GLKViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            (self.view as? GLKView)?.context = EAGLContext(api: .openGLES1)// ?? EAGLContext(api: .openGLES2)
            
            self.preferredFramesPerSecond = 60
        }
        
        override func glkView(_ view: GLKView, drawIn rect: CGRect) {
            glViewport (0, 0, GLsizei(view.frame.width * 2), GLsizei(view.frame.height * 2));
            
            draw()
        }
    }
    
    public typealias Options = [UIApplicationLaunchOptionsKey : Any]
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: Options? = nil) -> Bool {
        let frame = UIScreen.main.bounds
        let window = UIWindow(frame: frame)
        let viewController = SwiftOpenGLViewController()
        
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        
        self.window = window
        
        return true
    }
}

func main() {
    _ = autoreleasepool {
        return UIApplicationMain(0, nil, nil, NSStringFromClass(AppDelegate.self))
    }
}

main()

/*
     
     //Application
     //.mainWindow: Window?
     //.windows: [Window]
     //.add(window: _)
     //.run()
     
     //Window
     //.input callbacks
     //callbacks
     
     //Notifications
     
     MainLoop
     Application - MainWindow. (display) - Context (makeCurrent)
     Window. (display) - Context (makeCurrent)
     Window. - Callbacks
     Notifications
     
     Application - Callbacks (mouse, keyboard)
     Notifications
     
     OpenGL
     
     Window - Close
     Window - Frame
     Window -
*/
#else
//    import CGLFW
//    import GLFW
    
//    import COpenGLOSX
    
    class Main {
        
        func loadShaders() -> GLuint {
            let vertexShaderID: GLuint = glCreateShader(GLenum(GL_VERTEX_SHADER))
            let fragmentShaderID: GLuint = glCreateShader(GLenum(GL_FRAGMENT_SHADER))
            
            let vertexShaderCode = //"#version 120\n" +
                "attribute vec3 vertexPosition_modelspace;\n" +
                "void main(){\n" +
                "gl_Position = vec4(vertexPosition_modelspace, 1.0);\n" +
            "}"
            
            let fragmentShaderCode = //"#version 120\n" +
                "void main(){\n" +
                "gl_FragColor = vec4(1,0,0,1);\n" +
            "}"
            
            var result = GL_FALSE
            var logLength: GLint = 0
            
            vertexShaderCode.withCString { code in
                glShaderSource(vertexShaderID, 1, [code], nil)
            }
            glCompileShader(vertexShaderID)
            
            glGetShaderiv(vertexShaderID, GLenum(GL_COMPILE_STATUS), &result)
            glGetShaderiv(vertexShaderID, GLenum(GL_INFO_LOG_LENGTH), &logLength)
            
            print("vertex res = \(result)")
            if (logLength > 0) {
                print("vertex compiler info exists")
                var errorMessage: [Int8] = []
                glGetShaderInfoLog(vertexShaderID, logLength, nil, &errorMessage)
                print(String.init(validatingUTF8: errorMessage))
            }
            
            fragmentShaderCode.withCString { code in
                glShaderSource(fragmentShaderID, 1, [code], nil)
            }
            glCompileShader(fragmentShaderID)
            
            glGetShaderiv(fragmentShaderID, GLenum(GL_COMPILE_STATUS), &result)
            glGetShaderiv(fragmentShaderID, GLenum(GL_INFO_LOG_LENGTH), &logLength)
            
            print("fragment res = \(result)")
            if (logLength > 0) {
                print("fragment compiler info exists")
            }
            
            let programID: GLuint = glCreateProgram()
            glAttachShader(programID, vertexShaderID)
            glAttachShader(programID, fragmentShaderID)
            glLinkProgram(programID)
            
            glGetProgramiv(programID, GLenum(GL_LINK_STATUS), &result)
            glGetShaderiv(programID, GLenum(GL_INFO_LOG_LENGTH), &logLength)
            
            print("shader res = \(result)")
            if (logLength > 0) {
                print("shader info exists")
            }
            
            glDeleteShader(vertexShaderID)
            glDeleteShader(fragmentShaderID)
            
            return programID
        }
        
        func main() {
            glfw.initialize()
            defer { glfw.terminate() }
            
            
            
            glfw.set(windowHint: .samples(4))
            glfw.set(windowHint: .versionMajor(2))
            glfw.set(windowHint: .versionMinor(1))
//            glfw.set(windowHint: .openGLForwardCompat(true))
//            glfw.set(windowHint: .openGLProfile(.core))
            
            guard let window1 = glfw.Window(width: 600, height: 600, title: "second") else {
                return
            }
            
//            guard let window2 = glfw.Window(width: 300, height: 300, title: "first") else {
//                return
//            }
            
            window1.callbacks.closed = { window in
                print("sas")
            }
            
            window1.callbacks.closed = { window in
                print("close")
            }
            
            
            window1.makeCurrent()
            print(String(cString: glGetString( GLenum(GL_VERSION) )))
            
            let vertices: [GLfloat] = [
                -1, -1, -1,
                1, -1, 0,
                0, 1, 0
            ]
            
            
            let programID = self.loadShaders()
            
            
            while !window1.shouldClose {
                glfw.pollEvents()
                
                do {
                    window1.makeCurrent()
                    
//
                    let size = window1.framebuffer.size
                    gl.viewport(x: 0, y: 0, width: size.width, height: size.height)
                    gl.clear(color: gl.Color(red: 0.5, green: 0.5, blue: 0.5))
                    gl.clear([.color, .depth])
                    
                    gl.matrixMode(.projection)
                    
                    glUseProgram(programID)
                    
                    var vertexBuffer: GLuint = 0
                    glGenBuffers(1, &vertexBuffer)
                    glBindBuffer(GLenum(GL_ARRAY_BUFFER), vertexBuffer)
                    glBufferData(GLenum(GL_ARRAY_BUFFER), 9 * MemoryLayout<GLfloat>.stride, vertices, GLenum(GL_STATIC_DRAW))
                    
                    
                    var vertexArray: GLuint = 0
                    glGenVertexArraysAPPLE(1, &vertexArray)
                    glBindVertexArrayAPPLE(vertexArray)
                    
                    glEnableVertexAttribArray(0)
                    glBindBuffer(GLenum(GL_ARRAY_BUFFER), vertexBuffer)
                    glVertexAttribPointer(0, 3, GLenum(GL_FLOAT), GLboolean(GL_FALSE), 0, nil)
                    
                    glBindVertexArrayAPPLE(vertexArray)
                    glDrawArrays(GLenum(GL_TRIANGLES), 0, 3)
                    
                    glDisableVertexAttribArray(0)
                    
                    window1.swapBuffers()
                }
                
//                do {
//                    window2.makeCurrent()
//                    
//                    
//                    let size = window2.framebuffer.size
//                    gl.viewport(x: 0, y: 0, width: size.width, height: size.height)
//                    draw()
//                    //                gl.clear(color: gl.Color(red: 0.5, green: 0.1, blue: 0.2, alpha: 1))
//                    //                gl.clear([.color, .depth])
//                    //
//                    //                gl.ortho(left: -1, right: 1, bottom: 1, top: -1, near: -1, far: 1)
//                    //
//                    //                gl.color(gl.Color(red: 0.5, green: 0.5, blue: 0.5))
//                    //                gl.draw(.triangles) {
//                    //                    gl.vertex(gl.Vertex(x: 1, y: 1))
//                    //                    gl.vertex(gl.Vertex(x: 1, y: 0))
//                    //                    gl.vertex(gl.Vertex(x: 0, y: 0))
//                    //                }
//                    
//                    //        http://www.glfw.org/docs/latest/window_guide.html#window_attribs
//                    
//                    window2.swapBuffers()
//                }
            }
        }
    }
    
Main().main()
    
#endif
