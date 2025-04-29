import ProjectDescription

// MARK: - MODULE TARGET IMPLEMENTATION
public extension Target {
    static func moduleTarget(
        name: String,
        dependencies: [TargetDependency],
        resources: ProjectDescription.ResourceFileElements? = []
    ) -> Target {
        Target.target(
            name: name,
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "ru.wunderkind.\(name.lowercased())",
            deploymentTargets: .iOS(Project.MINIMAL_SUPPORTED_IOS_VERSION),
            infoPlist: .default,
            sources: [
                "Wunderkind/ModuleTarget/\(name)/Source/**/*.swift"
            ],
            dependencies: dependencies
        )
    }
}

