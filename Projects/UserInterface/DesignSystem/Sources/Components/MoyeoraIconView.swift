//
//  MoyeoraImageView.swift
//  DesignSystem
//
//  Created by 김요한 on 2024/03/18.
//  Copyright © 2024 Moyeora. All rights reserved.
//

import UIKit

public final class MoyeoraIconView: UIImageView {
    public enum IconSize: Equatable {
        case big
        case small
        case custom(CGSize)
    }

    @Invalidating(.layout) public var size: IconSize = .big

    public init(size: IconSize = .big, image: UIImage? = nil) {
        self.size = size
        super.init(frame: .zero)
        self.image = image
        setIconSize()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
        setIconSize()
    }
}

private extension MoyeoraIconView {
    func setIconSize() {
        self.widthAnchor.constraint(equalToConstant: size.width).isActive = true
        self.heightAnchor.constraint(equalToConstant: size.height).isActive = true
    }
}

private extension MoyeoraIconView.IconSize {
    var width: CGFloat {
        switch self {
        case .big: return 28
        case .small: return 24
        case let .custom(size): return size.width
        }
    }

    var height: CGFloat {
        switch self {
        case .big: return 28
        case .small: return 24
        case let .custom(size): return size.height
        }
    }
}
