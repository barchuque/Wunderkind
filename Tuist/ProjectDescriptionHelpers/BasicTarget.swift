import ProjectDescription

//MARK: - BASIC TARGET IMPLEMENTATION
public extension Target {
    static func basicTargets() -> [Target] {
        return [
            basicTarget(
                name: Project.PRODUCTION_TARGET_NAME,
                bundleID: Project.PRODUCTION_BUNDLE_ID,
                settings: Settings.basicTargetProductionSettings()
            ),
            basicTarget(
                name: Project.DEBUG_TARGET_NAME,
                bundleID: Project.DEBUG_BUNDLE_ID,
                settings: Settings.basicTargetDebugSettings()
            )
        ]
    }
    
    static func basicTarget(
        name: String,
        bundleID: String,
        settings: Settings
    ) -> Target {
        Target.target(
            name: name,
            destinations: .iOS,
            product: .app,
            bundleId: bundleID,
            deploymentTargets: .iOS(Project.MINIMAL_SUPPORTED_IOS_VERSION),
            infoPlist: .file(path: "Wunderkind/BasicTarget/\(name)/Info.plist"),
            sources: [
                "Wunderkind/BasicTarget/Sources/**/*.swift"
            ],
            resources: [
                "Wunderkind/BasicTarget/Sources/**/*.storyboard"
            ],
            dependencies: TargetDependency.basicTargetDependencies(),
            settings: settings
        )
    }
}

// MARK: - BASIC TARGET DEPENDENCIES
public extension TargetDependency {
    static func basicTargetDependencies() -> [TargetDependency] {
        return [
            .external(name: "SnapKit", condition: nil),
            .target(name: "Services", condition: nil)
        ]
    }
}

// MARK: - BASIC TARGET SETTINGS
public extension Settings {
    static func basicTargetProductionSettings() -> Settings {
        return Settings.settings(
            base: [
                "ASSETCATALOG_COMPILER_APPICON_NAME": "ApplicationIcon",
                "CODE_SIGN_STYLE": "Manual",
                "DEVELOPMENT_TEAM": "56N6BTM3FC",
                "ENABLE_USER_SCRIPT_SANDBOXING": "NO",
                "SDKROOT": "iphoneos",
                "TARGETED_DEVICE_FAMILY": "1"
            ]
        )
    }
    
    static func basicTargetDebugSettings() -> Settings {
        return Settings.settings(
            base: [
                "ASSETCATALOG_COMPILER_APPICON_NAME": "ApplicationIcon",
                "CODE_SIGN_STYLE": "Manual",
                "DEVELOPMENT_TEAM": "56N6BTM3FC",
                "ENABLE_USER_SCRIPT_SANDBOXING": "NO",
                "SDKROOT": "iphoneos",
                "TARGETED_DEVICE_FAMILY": "1"
            ]
        )
    }
}
