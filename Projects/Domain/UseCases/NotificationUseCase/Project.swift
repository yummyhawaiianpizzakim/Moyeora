import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.UseCase.NotificationUseCase.rawValue,
    targets: [
        .interface(module: .useCase(.NotificationUseCase)),
        .implements(module: .useCase(.NotificationUseCase), dependencies: [
            .useCase(target: .NotificationUseCase, type: .interface)
        ]),
        .testing(module: .useCase(.NotificationUseCase), dependencies: [
            .useCase(target: .NotificationUseCase, type: .interface)
        ]),
        .tests(module: .useCase(.NotificationUseCase), dependencies: [
            .useCase(target: .NotificationUseCase)
        ])
    ]
)
