import UIKit
import CoreTypes

public class LaunchModuleBuilder {
    public static func build(
        moduleOutput: LaunchModuleOutputProtocol,
        interactiveNavigationOutput: LaunchInteractiveNavigationListenerOutputProtocol
    ) -> UIViewController {
        let interactiveNavigationListener = LaunchInteractiveNavigationListener(output: interactiveNavigationOutput)
        
        let launchView = LaunchView(moduleOutput: moduleOutput)
        let hostingController = HostingController(rootView: launchView)
        
        hostingController.interactiveNavigationListener = interactiveNavigationListener
        hostingController.sheetPresentationController?.delegate = interactiveNavigationListener
        
        return hostingController
    }
}
