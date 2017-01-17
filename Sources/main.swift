import SwiftOpenGL
import GLKit

func draw() {
    gl.clear(color: gl.Color(red: 0.2, green: 0.4, blue: 0.3, alpha: 1))
    gl.clear([.buffer, .depth])
    
    gl.matrixMode(.projection)
    gl.loadIdentity()
    
    gl.ortho(left: -1, right: 10, bottom: 10, top: -1, near: 0, far: 1)
    
    gl.begin(.triangles) {
//        glColor3f(0.1, 0.2, 0.3);
//        var fi: [GLfloat] = [0, 0, 0]
//        glVertex3fv(&fi)
//        var se: [GLfloat] = [2, 0, 0]
//        glVertex3fv(&se)
//        var th: [GLfloat] = [0, 2, 0]
//        glVertex3fv(&th)
    }
}

#if os(iOS)
    import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    class SwiftOpenGLViewController: GLKViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            (self.view as? GLKView)?.context = EAGLContext(api: .openGLES3) ?? EAGLContext(api: .openGLES2)
            
            self.preferredFramesPerSecond = 60
        }
        
        override func glkView(_ view: GLKView, drawIn rect: CGRect) {
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
     Application - MainWindow. (display) - Context (makeCurrent)
     Window. (display) - Context (makeCurrent)
     Window. - Callbacks
     Notifications
     
     Application - Callbacks (mouse, keyboard)
     Notifications
     
     OpenGL
*/
#else
    import CGLFW
    import GLFW
    
    import COpenGLOSX
    
    func main() {
        glfw.initialize()
        defer { glfw.terminate() }
        
        guard let window1 = glfw.Window(width: 600, height: 600, title: "second") else {
            return
        }
        
        window1.callbacks.closed = { window in
            print("sas")
        }
        
        window1.callbacks.closed = { window in
            print("close")
        }
        
        //window.frame { window, frameData } // 
        while !window1.shouldClose {
            glfw.pollEvents()
            
            do {
                window1.makeCurrent()
                
                let size = window1.framebuffer.size
                gl.viewport(x: 0, y: 0, width: size.width, height: size.height)
                draw()
                
                //        http://www.glfw.org/docs/latest/window_guide.html#window_attribs
                
                window1.swapBuffers()
            }
        }
    }
    
main()
    
#endif
