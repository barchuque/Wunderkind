import UIKit

public extension UIFont {
    // В будущем будет реализована зависимость от диагонали устройства пользователя
    // На данным момент принимаем за эталон диагональ iPhone 16 Pro Max
    static func designSystem(_ token: DesignSystemFont) -> UIFont {
        switch token {
        case .title_0:
            return UIFont.systemFont(ofSize: 18)
            
        case .subtitle_0:
            return UIFont.systemFont(ofSize: 14)
        }
    }
}
