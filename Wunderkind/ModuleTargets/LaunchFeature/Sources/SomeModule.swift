import UIKit
import SwiftUI
import DesignSystem

class SomeModule {
    func someFunction() {
        let color: UIColor = .designSystem(.primary_background)
        let font: UIFont = .designSystem(.title_0)
        
        let label: UILabel = UILabel()
        label.font = .designSystem(.subtitle_0)
        
        let size: CGSize = CGSize(
            width: .designSystem(.space_4),
            height: .designSystem(.radius_4)
        )
    }
}
