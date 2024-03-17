import Foundation
import ProjectDescription

public extension TargetDependency {
    static func feature(
        target: ModulePaths.Feature,
        type: MicroTargetType = .sources
    ) -> TargetDependency {
        .project(
            target: target.targetName(type: type),
            path: .relativeToFeature(target.rawValue)
        )
    }

    static func domain(
        target: ModulePaths.Domain,
        type: MicroTargetType = .sources
    ) -> TargetDependency {
        .project(
            target: target.targetName(type: type),
            path: .relativeToDomain(target.rawValue)
        )
    }
    
    static func useCase(
        target: ModulePaths.UseCase,
        type: MicroTargetType = .sources
    ) -> TargetDependency {
        .project(
            target: target.targetName(type: type),
            path: .relativeToUseCase(target.rawValue)
        )
    }
    
    static func entity(
        target: ModulePaths.Entity,
        type: MicroTargetType = .sources
    ) -> TargetDependency {
        .project(
            target: target.targetName(type: type),
            path: .relativeToEntity(target.rawValue)
        )
    }
    
    static func data(
        target: ModulePaths.Data,
        type: MicroTargetType = .sources
    ) -> TargetDependency {
        .project(
            target: target.targetName(type: type),
            path: .relativeToData(target.rawValue)
        )
    }
    
    static func repository(
        target: ModulePaths.Repository,
        type: MicroTargetType = .sources
    ) -> TargetDependency {
        .project(
            target: target.targetName(type: type),
            path: .relativeToRepository(target.rawValue)
        )
    }
    
    static func dto(
        target: ModulePaths.DTO,
        type: MicroTargetType = .sources
    ) -> TargetDependency {
        .project(
            target: target.targetName(type: type),
            path: .relativeToDTO(target.rawValue)
        )
    }

    static func core(
        target: ModulePaths.Core,
        type: MicroTargetType = .sources
    ) -> TargetDependency {
        .project(
            target: target.targetName(type: type),
            path: .relativeToCore(target.rawValue)
        )
    }

    static func shared(
        target: ModulePaths.Shared,
        type: MicroTargetType = .sources
    ) -> TargetDependency {
        .project(
            target: target.targetName(type: type),
            path: .relativeToShared(target.rawValue)
        )
    }

    static func userInterface(
        target: ModulePaths.UserInterface,
        type: MicroTargetType = .sources
    ) -> TargetDependency {
        .project(
            target: target.targetName(type: type),
            path: .relativeToUserInterface(target.rawValue)
        )
    }
}
