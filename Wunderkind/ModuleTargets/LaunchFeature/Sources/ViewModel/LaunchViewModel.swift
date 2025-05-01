import Combine
import Services

protocol LaunchViewModelProtocol: ObservableObject {
    var state: LaunchState { get }
}

class LaunchViewModel: LaunchViewModelProtocol {
    // MARK: - Module Output
    private weak var moduleOutput: LaunchModuleOutputProtocol?
    
    // MARK: - Data & State
    private let initialData: LaunchInitialData
    @Published var state: LaunchState
    
    // MARK: - Initialization
    init(
        initialData: LaunchInitialData,
        moduleOutput: LaunchModuleOutputProtocol
    ) {
        self.initialData = initialData
        self.moduleOutput = moduleOutput
        self.state = LaunchState(changedID: initialData.id + "Changed")
    }
}
