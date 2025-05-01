import UIKit

public class Router: RouterProtocol {
    
    public static let shared: Router = Router()
    
    var rootWindow: UIWindow?
    var rootNavigationController: UINavigationController?
    
    public func setRootWindow() {
        self.rootWindow = UIWindow(frame: UIScreen.main.bounds)
        self.rootWindow?.makeKeyAndVisible()
    }
    
    public func setRootNavigationController() {
        self.rootNavigationController = UINavigationController()
        self.rootWindow?.rootViewController = self.rootNavigationController
    }
    
    public func setRootViewController(viewController: UIViewController) {
        self.rootWindow?.rootViewController = viewController
    }
    
    public func pushViewController(viewController: UIViewController) {
        self.rootNavigationController?.pushViewController(viewController, animated: true)
    }
    
    public func presentViewController(viewController: UIViewController) {
        self.rootNavigationController?.viewControllers.last?.present(viewController, animated: true)
    }
    
    private init() { }
}

