import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Feature.CreatePlansFeature.rawValue,
    targets: [
        .interface(module: .feature(.CreatePlansFeature)),
        .implements(module: .feature(.CreatePlansFeature), dependencies: [
            .feature(target: .CreatePlansFeature, type: .interface)
        ]),
        .testing(module: .feature(.CreatePlansFeature), dependencies: [
            .feature(target: .CreatePlansFeature, type: .interface)
        ]),
        .tests(module: .feature(.CreatePlansFeature), dependencies: [
            .feature(target: .CreatePlansFeature)
        ]),
        .demo(module: .feature(.CreatePlansFeature), dependencies: [
            .feature(target: .CreatePlansFeature)
        ])
    ]
)
