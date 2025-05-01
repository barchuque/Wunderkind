import ProjectDescription

// MARK: - MODULE TARGET LIST
public extension Target {
    static func moduleTargets() -> [Target] {
        return [
            Target.moduleTarget(
                name: "Network",
                dependencies: []
            ),
            Target.moduleTarget(
                name: "Services",
                dependencies: [
                    .target(name: "Network", condition: nil)
                ]
            ),
            Target.moduleTarget(
                name: "Resources",
                dependencies: []
            )
        ]
    }
}
