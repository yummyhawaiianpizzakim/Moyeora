import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Repository.UserRepository.rawValue,
    targets: [
        .interface(module: .repository(.UserRepository)),
        .implements(module: .repository(.UserRepository), dependencies: [
            .repository(target: .UserRepository, type: .interface)
        ]),
        .testing(module: .repository(.UserRepository), dependencies: [
            .repository(target: .UserRepository, type: .interface)
        ]),
        .tests(module: .repository(.UserRepository), dependencies: [
            .repository(target: .UserRepository)
        ])
    ]
)
