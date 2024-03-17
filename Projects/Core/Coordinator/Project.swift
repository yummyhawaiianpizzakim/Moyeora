import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Core.Coordinator.rawValue,
    targets: [
        .interface(module: .core(.Coordinator)),
        .implements(module: .core(.Coordinator), dependencies: [
            .core(target: .Coordinator, type: .interface)
        ])
    ]
)
