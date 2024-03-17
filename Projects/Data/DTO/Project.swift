import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Shared.DTO.rawValue,
    targets: [
        .interface(module: .shared(.DTO)),
        .implements(module: .shared(.DTO), dependencies: [
            .shared(target: .DTO, type: .interface)
        ])
    ]
)
