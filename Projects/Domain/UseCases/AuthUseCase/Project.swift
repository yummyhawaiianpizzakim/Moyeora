import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.UseCase.AuthUseCase.rawValue,
    targets: [
        .interface(module: .useCase(.AuthUseCase)),
        .implements(module: .useCase(.AuthUseCase), dependencies: [
            .useCase(target: .AuthUseCase, type: .interface)
        ]),
        .testing(module: .useCase(.AuthUseCase), dependencies: [
            .useCase(target: .AuthUseCase, type: .interface)
        ]),
        .tests(module: .useCase(.AuthUseCase), dependencies: [
            .useCase(target: .AuthUseCase, type: .interface)
        ])
    ]
)
