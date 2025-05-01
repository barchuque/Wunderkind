public class ApplicationCoordinator<ApplicationParentCoordinator: ApplicationParentCoordinatorProtocol>: Coordinator<ApplicationParentCoordinator> {
    override public func start() {
        self.router.setRootWindow()
        self.router.setRootNavigationController()
        startLaunchCoordinator()
    }
}

// MARK: - Child Coordinators Initialization
extension ApplicationCoordinator {
    func startLaunchCoordinator() {
        let launchCoordinator = self.coordinatorFactory.makeLaunchCoordinator(parentCoordinator: self)
        self.addChildCoordinator(launchCoordinator)
        launchCoordinator.start()
    }
}

// MARK: - LaunchCoordinator Output Implementation
extension ApplicationCoordinator: LaunchParentCoordinatorProtocol {
    
}
