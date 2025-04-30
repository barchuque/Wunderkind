import SwiftUI

public extension Color {
    static func designSystem(_ token: DesignSystemColor) -> Color {
        return Color(uiColor: UIColor.designSystem(token))
    }
}
