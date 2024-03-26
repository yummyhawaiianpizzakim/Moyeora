import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Entity.Entity.rawValue,
    targets: [
        .interface(module: .entity(.Entity)),
        .implements(module: .entity(.Entity),product: .framework)
    ]
)
