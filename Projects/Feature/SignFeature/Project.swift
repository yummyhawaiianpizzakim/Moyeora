import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Feature.SignFeature.rawValue,
    targets: [
        .interface(module: .feature(.SignFeature)),
        .implements(module: .feature(.SignFeature), dependencies: [
            .feature(target: .SignFeature, type: .interface)
        ]),
        .testing(module: .feature(.SignFeature), dependencies: [
            .feature(target: .SignFeature, type: .interface)
        ]),
        .tests(module: .feature(.SignFeature), dependencies: [
            .feature(target: .SignFeature)
        ]),
        .demo(module: .feature(.SignFeature), dependencies: [
            .feature(target: .SignFeature)
        ])
    ]
)
