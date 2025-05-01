import SwiftUI

struct LaunchView: View {
    // MARK: Private Properties
    private weak var moduleOutput: LaunchModuleOutputProtocol?
    
    // MARK: Initialization
    init(moduleOutput: LaunchModuleOutputProtocol) {
        self.moduleOutput = moduleOutput
    }
    
    // MARK: - Body Implementation
    var body: some View {
        ScrollView {
            
        }
        .background(Color.orange)
    }
}
