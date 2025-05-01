import UIKit

public protocol RouterProtocol {
    func setRootWindow()
    func setRootNavigationController()
    func setRootViewController(viewController: UIViewController)
    func pushViewController(viewController: UIViewController)
    func presentViewController(viewController: UIViewController)
}
