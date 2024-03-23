import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let RxSwift = TargetDependency.external(name: "RxSwift")
    static let RxCocoa = TargetDependency.external(name: "RxCocoa")
    static let RxRelay = TargetDependency.external(name: "RxRelay")
    static let RxGesture = TargetDependency.external(name: "RxGesture")
    static let SnapKit = TargetDependency.external(name: "SnapKit")
    static let Kingfisher = TargetDependency.external(name: "Kingfisher")
    static let FirebaseAuth = TargetDependency.external(name: "FirebaseAuth")
    static let FirebaseFirestore = TargetDependency.external(name: "FirebaseFirestore")
    static let FirebaseFirestoreSwift = TargetDependency.external(name: "FirebaseFirestoreSwift")
    static let FirebaseStorage = TargetDependency.external(name: "FirebaseStorage")
}

public extension Package {
}
