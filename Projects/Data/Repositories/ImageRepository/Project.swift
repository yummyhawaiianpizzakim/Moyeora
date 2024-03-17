import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Repository.ImageRepository.rawValue,
    targets: [
        .interface(module: .repository(.ImageRepository)),
        .implements(module: .repository(.ImageRepository), dependencies: [
            .repository(target: .ImageRepository, type: .interface)
        ]),
        .testing(module: .repository(.ImageRepository), dependencies: [
            .repository(target: .ImageRepository, type: .interface)
        ]),
        .tests(module: .repository(.ImageRepository), dependencies: [
            .repository(target: .ImageRepository)
        ])
    ]
)
