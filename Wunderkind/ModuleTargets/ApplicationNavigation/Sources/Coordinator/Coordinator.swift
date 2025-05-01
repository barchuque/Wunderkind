public class Coordinator<ParentCoordinator: ParentCoordinatorProtocol>: CoordinatorProtocol {
    public var router: RouterProtocol
    
    internal let coordinatorFactory: CoordinatorFactoryProtocol
    
    internal weak var parentCoordinator: ParentCoordinator?
    internal var childCoordinators: [CoordinatorProtocol] = []
    
    public init(
        router: RouterProtocol = Router.shared,
        coordinatorFactory: CoordinatorFactoryProtocol = CoordinatorFactory(),
        parentCoordinator: ParentCoordinator?
    ) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.parentCoordinator = parentCoordinator
    }
    
    public func start() {
        assertionFailure("Функция должна быть переопределена в унаследованном координаторе!")
    }
    
    internal func addChildCoordinator(_ coordinator: CoordinatorProtocol) {
        for childCoordinator in childCoordinators where childCoordinator === coordinator {
            assertionFailure("Попытка добавить дочерний координатор повторно!")
            return
        }
        
        childCoordinators.append(coordinator)
    }
    
    internal func removeChildCoordinator(_ coordinator: CoordinatorProtocol) {
        childCoordinators.removeAll { childCoordinator in
            return childCoordinator === coordinator
        }
    }
}
