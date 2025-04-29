import ProjectDescription

// MARK: - MODULE TARGET IMPLEMENTATION
public extension Target {
    static func moduleTarget(
        name: String,
        dependencies: [TargetDependency]
    ) -> Target {
        Target.target(
            name: name,
            destinations: .iOS,
            product: .framework,
            bundleId: "ru.wunderkind.\(name.lowercased())",
            deploymentTargets: .iOS(Project.MINIMAL_SUPPORTED_IOS_VERSION),
            infoPlist: .default,
            sources: [
                "Wunderkind/ModuleTarget/\(name)/Source/**/*.swift"
            ],
            resources: [
                "Wunderkind/ModuleTarget/\(name)/Source/**/*.xcassets",
                "Wunderkind/ModuleTarget/\(name)/Source/**/*.strings"
            ],
            dependencies: dependencies
        )
    }
}

