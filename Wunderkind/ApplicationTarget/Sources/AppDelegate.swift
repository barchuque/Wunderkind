import UIKit
import ApplicationNavigation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    private lazy var applicationCoordinator = CoordinatorFactory().makeApplicationCoordinator(parentCoordinator: self)
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        applicationCoordinator.start()
        return true
    }
}

extension AppDelegate: ApplicationParentCoordinatorProtocol {
    
}
