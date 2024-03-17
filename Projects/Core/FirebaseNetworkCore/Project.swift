import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Core.FirebaseNetworkCore.rawValue,
    targets: [
        .interface(module: .core(.FirebaseNetworkCore)),
        .implements(module: .core(.FirebaseNetworkCore), dependencies: [
            .core(target: .FirebaseNetworkCore, type: .interface)
        ]),
        .testing(module: .core(.FirebaseNetworkCore), dependencies: [
            .core(target: .FirebaseNetworkCore, type: .interface)
        ]),
        .tests(module: .core(.FirebaseNetworkCore), dependencies: [
            .core(target: .FirebaseNetworkCore)
        ])
    ]
)
