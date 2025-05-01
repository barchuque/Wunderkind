import Foundation
import LaunchFeature

public class LaunchCoordinator<LaunchParentCoordinator: LaunchParentCoordinatorProtocol>: Coordinator<LaunchParentCoordinator>  {
    
    override public func start() {
        showLaunchScreen()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.showLaunchScreen()
        }
    }
}

// MARK: - Modules Initialization
private extension LaunchCoordinator {
    func showLaunchScreen() {
        let viewController = LaunchModuleBuilder.build(moduleOutput: self, interactiveNavigationOutput: self)
        
        self.router.pushViewController(viewController: viewController)
    }
}

// MARK: - LaunchModule InteractiveNavigationListener Implementation
extension LaunchCoordinator: LaunchInteractiveNavigationListenerOutputProtocol {
    public func launchModuleDidDisapper() {
        print("launchModuleDidDisapper")
    }
}

// MARK: - LaunchModule Output Implementation
extension LaunchCoordinator: LaunchModuleOutputProtocol {
    
}
