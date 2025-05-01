import UIKit
import Resources

public extension UIColor {
    static func designSystem(_ token: DesignSystemColor) -> UIColor {
        switch token {
        case .primary_background:
            return Resources.Colors.testColor.color
        }
    }
}
