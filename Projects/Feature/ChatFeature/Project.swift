import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Feature.ChatFeature.rawValue,
    targets: [
        .interface(module: .feature(.ChatFeature)),
        .implements(module: .feature(.ChatFeature), dependencies: [
            .feature(target: .ChatFeature, type: .interface)
        ]),
        .testing(module: .feature(.ChatFeature), dependencies: [
            .feature(target: .ChatFeature, type: .interface)
        ]),
        .tests(module: .feature(.ChatFeature), dependencies: [
            .feature(target: .ChatFeature)
        ]),
        .demo(module: .feature(.ChatFeature), dependencies: [
            .feature(target: .ChatFeature)
        ])
    ]
)
