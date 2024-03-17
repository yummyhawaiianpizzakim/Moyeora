import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Repository.LocationRepository.rawValue,
    targets: [
        .interface(module: .repository(.LocationRepository)),
        .implements(module: .repository(.LocationRepository), dependencies: [
            .repository(target: .LocationRepository, type: .interface)
        ]),
        .testing(module: .repository(.LocationRepository), dependencies: [
            .repository(target: .LocationRepository, type: .interface)
        ]),
        .tests(module: .repository(.LocationRepository), dependencies: [
            .repository(target: .LocationRepository)
        ])
    ]
)
