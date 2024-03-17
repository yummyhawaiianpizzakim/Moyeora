import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Repository.PlansRepository.rawValue,
    targets: [
        .interface(module: .repository(.PlansRepository)),
        .implements(module: .repository(.PlansRepository), dependencies: [
            .repository(target: .PlansRepository, type: .interface)
        ]),
        .testing(module: .repository(.PlansRepository), dependencies: [
            .repository(target: .PlansRepository, type: .interface)
        ]),
        .tests(module: .repository(.PlansRepository), dependencies: [
            .repository(target: .PlansRepository)
        ])
    ]
)
