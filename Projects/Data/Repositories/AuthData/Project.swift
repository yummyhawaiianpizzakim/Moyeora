import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Data.AuthData.rawValue,
    targets: [
        .interface(module: .data(.AuthData)),
        .implements(module: .data(.AuthData), dependencies: [
            .data(target: .AuthData, type: .interface)
        ]),
        .testing(module: .data(.AuthData), dependencies: [
            .data(target: .AuthData, type: .interface)
        ]),
        .tests(module: .data(.AuthData), dependencies: [
            .data(target: .AuthData)
        ])
    ]
)
