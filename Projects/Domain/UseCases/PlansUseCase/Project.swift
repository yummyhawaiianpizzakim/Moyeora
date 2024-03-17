import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.UseCase.PlansUseCase.rawValue,
    targets: [
        .interface(module: .useCase(.PlansUseCase)),
        .implements(module: .useCase(.PlansUseCase), dependencies: [
            .useCase(target: .PlansUseCase, type: .interface)
        ]),
        .testing(module: .useCase(.PlansUseCase), dependencies: [
            .useCase(target: .PlansUseCase, type: .interface)
        ]),
        .tests(module: .useCase(.PlansUseCase), dependencies: [
            .useCase(target: .PlansUseCase)
        ])
    ]
)
