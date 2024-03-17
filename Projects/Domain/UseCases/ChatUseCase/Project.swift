import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.UseCase.ChatUseCase.rawValue,
    targets: [
        .interface(module: .useCase(.ChatUseCase)),
        .implements(module: .useCase(.ChatUseCase), dependencies: [
            .useCase(target: .ChatUseCase, type: .interface)
        ]),
        .testing(module: .useCase(.ChatUseCase), dependencies: [
            .useCase(target: .ChatUseCase, type: .interface)
        ]),
        .tests(module: .useCase(.ChatUseCase), dependencies: [
            .useCase(target: .ChatUseCase)
        ])
    ]
)
