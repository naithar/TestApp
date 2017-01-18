import COpenGLOSX
import SwiftOpenGL


func draw() {
    gl.clear(color: gl.Color(red: 0.2, green: 0.6, blue: 0.3, alpha: 1))
    gl.clear([.color, .depth])
    
    gl.matrixMode(.projection)
    gl.loadIdentity()
    
    gl.ortho(left: -10, right: 10, bottom: 10, top: -10, near: 0, far: 1)

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
    
    
//    glBegin(GLenum(GL_FLOAT))
    
//    print(glGetError())
    
    let q3: [GLfloat] = [
        -10,-10,
        10,-10,
        10,5,
        5,5
    ]
    
    
    
    var col: [GLfloat] = [
        0, 0, 0, 0,
        0.1, 0.2, 1, 1,
        1, 0.2, 0.3, 1,
        1, 0.2, 0.3, 1
    ]
    
    var color = [GLdouble]()
    
    gl.color(gl.Color(red: 1, green: 0.2, blue: 0.3, alpha: 1))
    
    gl.get(GLfloat.self, key: GLenum(GL_CURRENT_COLOR)) { color in
        print(GLfloat(color[1]))
    }
    
    gl.get(GLboolean.self, key: GLenum(GL_BLEND)) { blend in
        print(blend)
    }
    
    
    glEnableClientState(GLenum(GL_VERTEX_ARRAY));
    glEnableClientState(GLenum(GL_COLOR_ARRAY));
    
    glVertexPointer(2, GLenum(GL_FLOAT), 0, q3);
    glColorPointer(4, GLenum(GL_FLOAT), 0, col);
    glDrawArrays(GLenum(GL_TRIANGLE_FAN),0,4);
    
    glDisableClientState(GLenum(GL_COLOR_ARRAY));
    glDisableClientState(GLenum(GL_VERTEX_ARRAY));

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
        
        
        var vbo: GLuint = 0
        var vao: GLuint = 0
        override func viewDidLoad() {
            super.viewDidLoad()
            
            (self.view as? GLKView)?.context = EAGLContext(api: .openGLES3) ?? EAGLContext(api: .openGLES2)
            
            self.preferredFramesPerSecond = 60
            
            let vertixes: [GLfloat] = [
                0, 0, 0,
                2, 0, 0,
                0, 2, 0
            ]
            
            glEnableClientState(GLenum(GL_VERTEX_ARRAY));
//            
//            "ss".withCString { (string: UnsafePointer<Int8>) in
//                glShaderSource(1, 1, [string], [GLint(2)])
//            }
        
//            var vbo: GLuint = 0
            glGenBuffers(1, &vbo)
            glBindBuffer(GLenum(GL_ARRAY_BUFFER), vbo)
            glBufferData(
                GLenum(GL_ARRAY_BUFFER), MemoryLayout<[GLfloat]>.stride * vertixes.count,
                vertixes, GLenum(GL_STATIC_DRAW)
            )
            
//            var vao: GLuint = 0
            glGenVertexArrays(1, &vao);
            glBindVertexArray(vao);
            glBindBuffer(GLenum(GL_ARRAY_BUFFER), vbo);
            
            glVertexAttribPointer(0, 3, GLenum(GL_FLOAT), GLboolean(GL_FALSE), 0, nil);
            
            glBindBuffer(GLenum(GL_ARRAY_BUFFER), 0); // unbind VBO
            glBindVertexArray(0); // unbind VAO
        }
        
        override func glkView(_ view: GLKView, drawIn rect: CGRect) {
            glViewport (0, 0, GLsizei(view.frame.width), GLsizei(view.frame.height));
//            glMatrixMode (GLenum(GL_PROJECTION));
//            glLoadIdentity ();
            gl.ortho(left: -1, right: 1, bottom: 1, top: -1, near: -1, far: 1)
//            glMatrixMode (GLenum(GL_MODELVIEW));
            glFrontFace(GLenum(GL_CCW))
            
            glPushMatrix();
            
            
            glEnableClientState (GLenum(GL_VERTEX_ARRAY));
            let triVertices: [GLfloat] = [
                0.0, 1.0, 0.0,
                -1.0, -1.0, 0.0,
                1.0, -1.0, 0.0
            ]
            
            glVertexPointer(3, GLenum(GL_FLOAT), 0, triVertices);
            
            
            glClearColor (0.2, 0.3, 0.3, 0.0);
            glShadeModel (GLenum(GL_FLAT));
            glClear (GLbitfield(GL_COLOR_BUFFER_BIT));
            glColor4f (0.0, 0.0, 1.0, 1.0);
            glLoadIdentity ();
            
            
//            glTranslatef(0, 0, -20);
            
            
//            glUniformMatrix2fv(<#T##location: GLint##GLint#>, <#T##count: GLsizei##GLsizei#>, <#T##transpose: GLboolean##GLboolean#>, <#T##value: UnsafePointer<GLfloat>!##UnsafePointer<GLfloat>!#>)
//            glDrawArrays(GLenum(GL_TRIANGLES), 0, 3);
//            glDisableClientState(GLenum(GL_VERTEX_ARRAY));
//            glFlush ();
            
//            glBindVertexArray(self.vao);
//            glEnableVertexAttribArray(0);
//            glDrawArrays(GLenum(GL_TRIANGLES), 0, 3);
//            glDisableVertexAttribArray(0);
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
    import CGLFW
    import GLFW
    
    import COpenGLOSX
    
    class Main {
    func main() {
        glfw.initialize()
        defer { glfw.terminate() }
        
        guard let window1 = glfw.Window(width: 600, height: 600, title: "second") else {
            return
        }
        
        guard let window2 = glfw.Window(width: 300, height: 300, title: "first") else {
            return
        }
        
        window1.callbacks.closed = { window in
            print("sas")
        }
        
        window1.callbacks.closed = { window in
            print("close")
        }
        
        let vertixes: [GLfloat] = [
            0, 0, 0,
            2, 0, 0,
            0, 2, 0
        ]
        
        var VAO:GLuint = 0
        glGenVertexArraysAPPLE(1, &VAO)
        
        //    defer { glDeleteVertexArraysAPPLE(1, &VAO) }
        var VBO:GLuint = 0
        glGenBuffers(1, &VBO)
        //    defer { glDeleteBuffers(1, &VBO) }
        // Bind the Vertex Array Object first, then bind and set
        // vertex buffer(s) and attribute pointer(s).
        glBindVertexArrayAPPLE(VAO)
        
        glBindBuffer(GLenum(GL_ARRAY_BUFFER), VBO)
        glBufferData(GLenum(GL_ARRAY_BUFFER),
                     MemoryLayout<GLfloat>.stride * vertixes.count,
                     vertixes, GLenum(GL_DYNAMIC_DRAW))
        
        glVertexAttribPointer(0, 3, GLenum(GL_FLOAT),
                              GLboolean(GL_FALSE), GLsizei(MemoryLayout<GLfloat>.stride * 3), nil)
        glEnableVertexAttribArray(0)
        
        glBindBuffer(GLenum(GL_ARRAY_BUFFER), 0) // Note that this is allowed,
        // the call to glVertexAttribPointer registered VBO as the currently bound
        // vertex buffer object so afterwards we can safely unbind.
        glBindVertexArrayAPPLE(0)
        
        //window.frame { window, frameData } // 
        
//        RunLoop.current.add
        
        while !window1.shouldClose {
            glfw.pollEvents()
            
            do {
                window1.makeCurrent()
                
                let size = window1.framebuffer.size
                gl.viewport(x: 0, y: 0, width: size.width, height: size.height)
                draw()
                
                gl.color(gl.Color(red: 0.1, green: 0.2, blue: 0.3, alpha: 1))
                
                glBindVertexArrayAPPLE(VAO)
                glDrawArrays(GLenum(GL_TRIANGLES), 0, 3)
                glBindVertexArrayAPPLE(0)
                
                //        http://www.glfw.org/docs/latest/window_guide.html#window_attribs
                
                window1.swapBuffers()
            }
            
            do {
                window2.makeCurrent()
                
                
                let size = window1.framebuffer.size
                gl.viewport(x: 0, y: 0, width: size.width, height: size.height)
                gl.clear(color: gl.Color(red: 0.5, green: 0.1, blue: 0.2, alpha: 1))
                gl.clear([.color])
                
                //        http://www.glfw.org/docs/latest/window_guide.html#window_attribs
                
                window2.swapBuffers()
            }
        }
        }
    }
    
Main().main()
    
#endif
