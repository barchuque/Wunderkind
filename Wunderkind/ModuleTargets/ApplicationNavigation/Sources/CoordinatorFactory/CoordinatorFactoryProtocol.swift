public protocol CoordinatorFactoryProtocol {
    func makeApplicationCoordinator<ApplicationParentCoordinator>(parentCoordinator: ApplicationParentCoordinator?) -> ApplicationCoordinator<ApplicationParentCoordinator>
    func makeLaunchCoordinator<LaunchParentCoordinator>(parentCoordinator: LaunchParentCoordinator) -> LaunchCoordinator<LaunchParentCoordinator>
}
