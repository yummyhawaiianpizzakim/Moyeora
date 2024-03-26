import ProjectDescription

public extension ProjectDescription.Path {
    static func relativeToSections(_ path: String) -> Self {
        return .relativeToRoot("Projects/\(path)")
    }
    static func relativeToFeature(_ path: String) -> Self {
        return .relativeToRoot("Projects/Feature/\(path)")
    }
    static func relativeToDomain(_ path: String) -> Self {
        return .relativeToRoot("Projects/Domain/\(path)")
    }
    static func relativeToUseCase(_ path: String) -> Self {
        return .relativeToRoot("Projects/Domain/UseCases/\(path)")
    }
    static func relativeToEntity(_ path: String) -> Self {
        return .relativeToRoot("Projects/Domain/\(path)")
    }
    static func relativeToData(_ path: String) -> Self {
        return .relativeToRoot("Projects/Data/\(path)")
    }
    static func relativeToRepository(_ path: String) -> Self {
        return .relativeToRoot("Projects/Data/Repositories/\(path)")
    }
    static func relativeToDTO(_ path: String) -> Self {
        return .relativeToRoot("Projects/Data/DTO/\(path)")
    }
    static func relativeToCore(_ path: String) -> Self {
        return .relativeToRoot("Projects/Core/\(path)")
    }
    static func relativeToShared(_ path: String) -> Self {
        return .relativeToRoot("Projects/Shared/\(path)")
    }
    static func relativeToUserInterface(_ path: String) -> Self {
        return .relativeToRoot("Projects/UserInterface/\(path)")
    }
    static var app: Self {
        return .relativeToRoot("Projects/App")
    }
}

public extension TargetDependency {
    static func feature(name: String) -> Self {
        return .project(target: name, path: .relativeToFeature(name))
    }
    static func domain(name: String) -> Self {
        return .project(target: name, path: .relativeToDomain(name))
    }
    static func useCase(name: String) -> Self {
        return .project(target: name, path: .relativeToUseCase(name))
    }
    static func entity(name: String) -> Self {
        return .project(target: name, path: .relativeToEntity(name))
    }
    static func data(name: String) -> Self {
        return .project(target: name, path: .relativeToData(name))
    }
    static func repository(name: String) -> Self {
        return .project(target: name, path: .relativeToRepository(name))
    }
    static func dto(name: String) -> Self {
        return .project(target: name, path: .relativeToDTO(name))
    }
    static func core(name: String) -> Self {
        return .project(target: name, path: .relativeToCore(name))
    }
    static func shared(name: String) -> Self {
        return .project(target: name, path: .relativeToShared(name))
    }
    static func userInterface(name: String) -> Self {
        return .project(target: name, path: .relativeToUserInterface(name))
    }
}
