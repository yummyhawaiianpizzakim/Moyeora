import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.UseCase.BlockUseCase.rawValue,
    targets: [
        .interface(module: .useCase(.BlockUseCase)),
        .implements(module: .useCase(.BlockUseCase), dependencies: [
            .useCase(target: .BlockUseCase, type: .interface)
        ]),
        .testing(module: .useCase(.BlockUseCase), dependencies: [
            .useCase(target: .BlockUseCase, type: .interface)
        ]),
        .tests(module: .useCase(.BlockUseCase), dependencies: [
            .useCase(target: .BlockUseCase)
        ])
    ]
)
