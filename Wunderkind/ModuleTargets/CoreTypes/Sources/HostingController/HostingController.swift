import SwiftUI

public class HostingController<Content: View>: UIHostingController<Content> {
    public var interactiveNavigationListener: InteractiveNavigationListenerProtocol?
    
    override public func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        if parent == nil {
            interactiveNavigationListener?.viewControllerDidDisappear()
        }
    }
}
