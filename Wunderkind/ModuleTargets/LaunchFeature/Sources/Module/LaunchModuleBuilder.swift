import UIKit
import CoreTypes

public class LaunchModuleBuilder {
    public static func build(
        moduleOutput: LaunchModuleOutputProtocol,
        interactiveNavigationOutput: LaunchInteractiveNavigationListenerOutputProtocol
    ) -> UIViewController {
        let interactiveNavigationListener = LaunchInteractiveNavigationListener(output: interactiveNavigationOutput)
        
        let launchViewModel = LaunchViewModel(
            initialData: LaunchInitialData(id: "Это какой-то айдишник"),
            moduleOutput: moduleOutput
        )
        
        let launchView = LaunchView(viewModel: launchViewModel)
        let hostingController = HostingController(rootView: launchView)
        
        hostingController.interactiveNavigationListener = interactiveNavigationListener
        hostingController.sheetPresentationController?.delegate = interactiveNavigationListener
        
        return hostingController
    }
}
