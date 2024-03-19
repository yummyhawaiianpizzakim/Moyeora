//
//  MoyeoraIconButton.swift
//  DesignSystem
//
//  Created by 김요한 on 2024/03/19.
//  Copyright © 2024 Moyeora. All rights reserved.
//
import UIKit

public final class MoyeoraIconButton: UIButton {
    public init(image: UIImage?,
                backgroundColor: UIColor.MoyeoraColorSystem = .primary(.primary2),
                cornerRadius: CGFloat = MoyeoraConstants.cornerRadiusSmall
    ) {
        super.init(frame: .zero)
        self.setImage(image, for: .normal)
        self.backgroundColor = .moyeora(backgroundColor)
        self.layer.cornerRadius = cornerRadius
    }

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
