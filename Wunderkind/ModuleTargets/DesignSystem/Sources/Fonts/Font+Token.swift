import SwiftUI

public extension Font {
    static func designSystem(_ token: DesignSystemFont) -> Font {
        return Font(UIFont.designSystem(token))
    }
}
