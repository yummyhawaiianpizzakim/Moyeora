import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Shared.FoundationUtilities.rawValue,
    targets: [
        .implements(module: .shared(.FoundationUtilities))
    ]
)
