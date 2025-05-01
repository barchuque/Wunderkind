public struct CoordinatorFactory: CoordinatorFactoryProtocol {
    public func makeApplicationCoordinator<ApplicationParentCoordinator>(parentCoordinator: ApplicationParentCoordinator?) -> ApplicationCoordinator<ApplicationParentCoordinator> {
        return ApplicationCoordinator(parentCoordinator: parentCoordinator)
    }
    
    public func makeLaunchCoordinator<LaunchParentCoordinator>(parentCoordinator: LaunchParentCoordinator) -> LaunchCoordinator<LaunchParentCoordinator> {
        return LaunchCoordinator(parentCoordinator: parentCoordinator)
    }
    
    public init() {
        
    }
}
