import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.UseCase.FriendUseCase.rawValue,
    targets: [
        .interface(module: .useCase(.FriendUseCase)),
        .implements(module: .useCase(.FriendUseCase), dependencies: [
            .useCase(target: .FriendUseCase, type: .interface)
        ]),
        .testing(module: .useCase(.FriendUseCase), dependencies: [
            .useCase(target: .FriendUseCase, type: .interface)
        ]),
        .tests(module: .useCase(.FriendUseCase), dependencies: [
            .useCase(target: .FriendUseCase)
        ])
    ]
)
