import ProjectDescription

// MARK: - MODULE TARGET LIST
public extension Target {
    static func moduleTargets() -> [Target] {
        return [
            Target.moduleTarget(
                name: "Resources",
                dependencies: []
            ),
            Target.moduleTarget(
                name: "DesignSystem",
                dependencies: [
                    .target(name: "Resources", condition: nil)
                ]
            ),
            Target.moduleTarget(
                name: "NetworkCore",
                dependencies: []
            ),
            Target.moduleTarget(
                name: "Services",
                dependencies: [
                    .target(name: "NetworkCore", condition: nil)
                ]
            ),
            Target.moduleTarget(
                name: "LaunchFeature",
                dependencies: [
                    .target(name: "DesignSystem", condition: nil),
                    .target(name: "Services", condition: nil)
                ]
            ),
            Target.moduleTarget(
                name: "ApplicationNavigation",
                dependencies: [
                    .target(name: "LaunchFeature", condition: nil)
                ]
            )
        ]
    }
}
