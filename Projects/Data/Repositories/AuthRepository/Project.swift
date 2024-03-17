import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Repository.AuthRepository.rawValue,
    targets: [
        .interface(module: .repository(.AuthRepository)),
        .implements(module: .repository(.AuthRepository), dependencies: [
            .repository(target: .AuthRepository, type: .interface)
        ]),
        .testing(module: .repository(.AuthRepository), dependencies: [
            .repository(target: .AuthRepository, type: .interface)
        ]),
        .tests(module: .repository(.AuthRepository), dependencies: [
            .repository(target: .AuthRepository)
        ])
    ]
)
