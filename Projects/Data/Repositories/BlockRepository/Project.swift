import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Repository.BlockRepository.rawValue,
    targets: [
        .interface(module: .repository(.BlockRepository)),
        .implements(module: .repository(.BlockRepository), dependencies: [
            .repository(target: .BlockRepository, type: .interface)
        ]),
        .testing(module: .repository(.BlockRepository), dependencies: [
            .repository(target: .BlockRepository, type: .interface)
        ]),
        .tests(module: .repository(.BlockRepository), dependencies: [
            .repository(target: .BlockRepository)
        ])
    ]
)
