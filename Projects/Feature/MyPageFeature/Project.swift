import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Feature.MyPageFeature.rawValue,
    targets: [
        .interface(module: .feature(.MyPageFeature)),
        .implements(module: .feature(.MyPageFeature), dependencies: [
            .feature(target: .MyPageFeature, type: .interface)
        ]),
        .testing(module: .feature(.MyPageFeature), dependencies: [
            .feature(target: .MyPageFeature, type: .interface)
        ]),
        .tests(module: .feature(.MyPageFeature), dependencies: [
            .feature(target: .MyPageFeature)
        ]),
        .demo(module: .feature(.MyPageFeature), dependencies: [
            .feature(target: .MyPageFeature)
        ])
    ]
)
