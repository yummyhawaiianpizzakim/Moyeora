import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.UseCase.LocationShareUseCase.rawValue,
    targets: [
        .interface(module: .useCase(.LocationShareUseCase)),
        .implements(module: .useCase(.LocationShareUseCase), dependencies: [
            .useCase(target: .LocationShareUseCase, type: .interface)
        ]),
        .testing(module: .useCase(.LocationShareUseCase), dependencies: [
            .useCase(target: .LocationShareUseCase, type: .interface)
        ]),
        .tests(module: .useCase(.LocationShareUseCase), dependencies: [
            .useCase(target: .LocationShareUseCase)
        ])
    ]
)
