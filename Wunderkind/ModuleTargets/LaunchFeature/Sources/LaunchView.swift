import SwiftUI

struct LaunchView: View {
    // MARK: - Private Properties
    @ObservedObject private var viewModel: LaunchViewModel
    
    // MARK: - Initialization
    init(viewModel: LaunchViewModel) {
        self.viewModel = viewModel
    }
    
    // MARK: - Body Implementation
    var body: some View {
        ScrollView {
            Text(viewModel.state.changedID)
        }
        .frame(maxWidth: .infinity)
        .background(Color.orange)
    }
}
