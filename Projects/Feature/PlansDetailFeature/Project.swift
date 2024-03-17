import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Feature.PlansDetailFeature.rawValue,
    targets: [
        .interface(module: .feature(.PlansDetailFeature)),
        .implements(module: .feature(.PlansDetailFeature), dependencies: [
            .feature(target: .PlansDetailFeature, type: .interface)
        ]),
        .testing(module: .feature(.PlansDetailFeature), dependencies: [
            .feature(target: .PlansDetailFeature, type: .interface)
        ]),
        .tests(module: .feature(.PlansDetailFeature), dependencies: [
            .feature(target: .PlansDetailFeature)
        ]),
        .demo(module: .feature(.PlansDetailFeature), dependencies: [
            .feature(target: .PlansDetailFeature)
        ])
    ]
)
