import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.UseCase.SearchUseCase.rawValue,
    targets: [
        .interface(module: .useCase(.SearchUseCase)),
        .implements(module: .useCase(.SearchUseCase), dependencies: [
            .useCase(target: .SearchUseCase, type: .interface)
        ]),
        .testing(module: .useCase(.SearchUseCase), dependencies: [
            .useCase(target: .SearchUseCase, type: .interface)
        ]),
        .tests(module: .useCase(.SearchUseCase), dependencies: [
            .useCase(target: .SearchUseCase)
        ])
    ]
)
