//
//  TargetScript+SwiftLint.swift
//  Manifests
//
//  Created by Михаил Юрчук on 30.04.2025.
//

import ProjectDescription

// MARK: - SWIFTLINT TARGET SCRIPT
public extension TargetScript {
    static func swiftLintTargetScript() -> [TargetScript] {
        return [
            TargetScript.pre(
                script:
                    """
                    if [[ "$(uname -m)" == arm64 ]]; then
                        export PATH="/opt/homebrew/bin:$PATH"
                    fi
                    
                    if which swiftlint > /dev/null; then
                        swiftlint
                    else
                        echo "warning: 'swiftlint' command not found. Run 'brew install swiftlint'"
                    fi
                    """,
                name: "SwiftLint"
            )
        ]
    }
}
