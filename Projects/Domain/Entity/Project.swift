import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Shared.Entity.rawValue,
    targets: [
        .interface(module: .shared(.Entity)),
        .implements(module: .shared(.Entity), dependencies: [
            .shared(target: .Entity, type: .interface)
        ])
    ]
)
