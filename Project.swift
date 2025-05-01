import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - PROJECT IMPLEMENTATION
let project = Project(
    name: "Wunderkind",
    options: .options(
        disableBundleAccessors: true
    ),
    settings: Settings.settings(
        base: SettingsDictionary()
            .marketingVersion(Project.MARKETING_VERSION)
            .currentProjectVersion(Project.CURRENT_BUILD_NUMBER)
            .swiftVersion(Project.SWIFT_VERSION),
        configurations: [
            .debug(name: .debug),
            .release(name: .release)
        ]
    ),
    targets: Target.basicTargets() +
             Target.moduleTargets(),
    resourceSynthesizers: [.strings(), .assets()]
)
