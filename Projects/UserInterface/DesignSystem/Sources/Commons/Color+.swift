//
//  Color+.swift
//  DesignSystem
//
//  Created by 김요한 on 2024/03/18.
//  Copyright © 2024 Moyeora. All rights reserved.
//

import UIKit

protocol MoyeoraColorable {
    var color: UIColor { get }
}

public extension UIColor {
    enum MoyeoraColorSystem {
        case primary(Primary)
        case neutral(Neutral)
        case system(System)
    }

    static func moyeora(_ style: MoyeoraColorSystem) -> UIColor {
        switch style {
        case let .primary(colorable as MoyeoraColorable),
            let .neutral(colorable as MoyeoraColorable),
            let .system(colorable as MoyeoraColorable):
            
            return colorable.color
        }
    }
}

public extension UIColor.MoyeoraColorSystem {
    enum Primary: MoyeoraColorable {
        case primary1
        case primary2
    }
    
    enum Neutral: MoyeoraColorable {
        case balck
        case gray1
        case gray2
        case gray3
        case gray4
        case gray5
        case white
    }
    
    enum System: MoyeoraColorable {
        case error
        case success
    }
}

public extension UIColor.MoyeoraColorSystem.Primary {
    var color: UIColor {
        switch self {
        case .primary1: return DesignSystemAsset.Primary.primay1.color
        case .primary2: return DesignSystemAsset.Primary.primay2.color
        }
    }
}

public extension UIColor.MoyeoraColorSystem.Neutral {
    var color: UIColor {
        switch self {
        case .gray1: return DesignSystemAsset.Neutral.gray1.color
        case .gray2: return DesignSystemAsset.Neutral.gray2.color
        case .gray3: return DesignSystemAsset.Neutral.gray3.color
        case .gray4: return DesignSystemAsset.Neutral.gray3.color
        case .gray5: return DesignSystemAsset.Neutral.gray5.color
        case .balck: return DesignSystemAsset.Neutral.black.color
        case .white: return DesignSystemAsset.Neutral.white.color
        }
    }
}

public extension UIColor.MoyeoraColorSystem.System {
    var color: UIColor {
        switch self {
        case .error: return DesignSystemAsset.System.error.color
        case .success: return DesignSystemAsset.System.success.color
        }
    }
}
