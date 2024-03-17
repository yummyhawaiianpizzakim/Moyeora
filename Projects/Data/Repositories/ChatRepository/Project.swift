import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Repository.ChatRepository.rawValue,
    targets: [
        .interface(module: .repository(.ChatRepository)),
        .implements(module: .repository(.ChatRepository), dependencies: [
            .repository(target: .ChatRepository, type: .interface)
        ]),
        .testing(module: .repository(.ChatRepository), dependencies: [
            .repository(target: .ChatRepository, type: .interface)
        ]),
        .tests(module: .repository(.ChatRepository), dependencies: [
            .repository(target: .ChatRepository)
        ])
    ]
)
