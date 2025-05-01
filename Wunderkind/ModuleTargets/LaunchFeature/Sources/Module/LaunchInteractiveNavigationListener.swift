import UIKit
import CoreTypes

public protocol LaunchInteractiveNavigationListenerOutputProtocol: AnyObject {
    func launchModuleDidDisapper()
}

public class LaunchInteractiveNavigationListener: NSObject, InteractiveNavigationListenerProtocol {    
    private weak var output: LaunchInteractiveNavigationListenerOutputProtocol?
    
    public func viewControllerDidDisappear() {
        self.output?.launchModuleDidDisapper()
    }
    
    public init(output: LaunchInteractiveNavigationListenerOutputProtocol) {
        self.output = output
    }
    
    public func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
        self.output?.launchModuleDidDisapper()
    }
}
