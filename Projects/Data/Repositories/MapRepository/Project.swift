import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Repository.MapRepository.rawValue,
    targets: [
        .interface(module: .repository(.MapRepository)),
        .implements(module: .repository(.MapRepository), dependencies: [
            .repository(target: .MapRepository, type: .interface)
        ]),
        .testing(module: .repository(.MapRepository), dependencies: [
            .repository(target: .MapRepository, type: .interface)
        ]),
        .tests(module: .repository(.MapRepository), dependencies: [
            .repository(target: .MapRepository)
        ])
    ]
)
