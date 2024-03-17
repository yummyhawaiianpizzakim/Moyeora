import Foundation

// swiftlint: disable all
public enum ModulePaths {
    case feature(Feature)
    case domain(Domain)
    case useCase(UseCase)
    case entity(Entity)
    case data(Data)
    case repository(Repository)
    case dto(DTO)
    case core(Core)
    case shared(Shared)
    case userInterface(UserInterface)
}

extension ModulePaths: MicroTargetPathConvertable {
    public func targetName(type: MicroTargetType) -> String {
        switch self {
        case let .feature(module as any MicroTargetPathConvertable),
            let .domain(module as any MicroTargetPathConvertable),
            let .useCase(module as any MicroTargetPathConvertable),
            let .entity(module as any MicroTargetPathConvertable),
            let .data(module as any MicroTargetPathConvertable),
            let .repository(module as any MicroTargetPathConvertable),
            let .dto(module as any MicroTargetPathConvertable),
            let .core(module as any MicroTargetPathConvertable),
            let .shared(module as any MicroTargetPathConvertable),
            let .userInterface(module as any MicroTargetPathConvertable):
            return module.targetName(type: type)
        
        }
    }
}

public extension ModulePaths {
    enum Feature: String, MicroTargetPathConvertable {
        case PlansDetailFeature
        case CreatePlansFeature
        case SignFeature
        case MyPageFeature
        case ChatFeature
        case HomeFeature
        case BaseFeature
    }
}

public extension ModulePaths {
    enum Domain: String, MicroTargetPathConvertable {
        case BaseDomain
    }
}

public extension ModulePaths {
    enum UseCase: String, MicroTargetPathConvertable {
        case AuthUseCase
        case BlockUseCase
        case LocationShareUseCase
        case NotificationUseCase
        case SearchUseCase
        case FriendUseCase
        case PlansUseCase
        case ChatUseCase
        case BaseUseCase
    }
}

public extension ModulePaths {
    enum Entity: String, MicroTargetPathConvertable {
        case Entity
        case BaseEntity
    }
}

public extension ModulePaths {
    enum Data: String, MicroTargetPathConvertable {
        case BaseData
    }
}

public extension ModulePaths {
    enum Repository: String, MicroTargetPathConvertable {
        case BlockRepository
        case ImageRepository
        case MapRepository
        case LocationRepository
        case PlansRepository
        case ChatRepository
        case UserRepository
        case AuthRepository
        case BaseRepository
    }
}

public extension ModulePaths {
    enum DTO: String, MicroTargetPathConvertable {
        case DTO
        case BaseEntity
    }
}

public extension ModulePaths {
    enum Core: String, MicroTargetPathConvertable {
        case Coordinator
        case FirebaseNetworkCore
        case CoreKit
    }
}

public extension ModulePaths {
    enum Shared: String, MicroTargetPathConvertable {
        case GlobalThirdPartyLibrary
    }
}

public extension ModulePaths {
    enum UserInterface: String, MicroTargetPathConvertable {
        case DesignSystem
    }
}

public enum MicroTargetType: String {
    case interface = "Interface"
    case sources = ""
    case testing = "Testing"
    case unitTest = "Tests"
    case demo = "Demo"
}

public protocol MicroTargetPathConvertable {
    func targetName(type: MicroTargetType) -> String
}

public extension MicroTargetPathConvertable where Self: RawRepresentable {
    func targetName(type: MicroTargetType) -> String {
        "\(self.rawValue)\(type.rawValue)"
    }
}
