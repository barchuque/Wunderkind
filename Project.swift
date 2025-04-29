import ProjectDescription

let project = Project(
    name: "Wunderkind",
    targets: [
        .target(
            name: "Wunderkind",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Wunderkind",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Wunderkind/Sources/**"],
            resources: ["Wunderkind/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "WunderkindTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.WunderkindTests",
            infoPlist: .default,
            sources: ["Wunderkind/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Wunderkind")]
        ),
    ]
)
