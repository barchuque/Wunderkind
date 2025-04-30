import Foundation

public extension CGFloat {
    // В будущем будет реализована зависимость от диагонали устройства пользователя
    // На данным момент принимаем за эталон диагональ iPhone 16 Pro Max
    static func designSystem(_ token: DesignSystemSize) -> CGFloat {
        switch token {
        case .space_0:
            return 0
        
        case .space_4:
            return 4
            
        case .radius_4:
            return 4
        }
    }
}
