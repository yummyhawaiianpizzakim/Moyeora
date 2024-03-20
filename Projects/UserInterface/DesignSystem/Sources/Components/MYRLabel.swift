//
//  MoyeoraLabel.swift
//  DesignSystem
//
//  Created by 김요한 on 2024/03/19.
//  Copyright © 2024 Moyeora. All rights reserved.
//

import UIKit

public final class MYRLabel: UILabel {
    public var padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

    override public var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize
        contentSize.height += padding.top + padding.bottom
        contentSize.width += padding.left + padding.right
        
        return contentSize
    }

    public init(
        _ title: String = "",
        textColor: UIColor.MYRColorSystem = .neutral(.balck),
        font: UIFont.MYRFontSystem = .subtitle2
    ) {
        super.init(frame: .zero)
        self.text = title
        self.font = .moyeora(font)
        self.textColor = .moyeora(textColor)
        self.setupAttributes(title: title, font: font, color: .moyeora(textColor))
    }

    override public func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: padding))
    }
    
    private func setupAttributes(title: String, font: UIFont.MYRFontSystem, color: UIColor) {
        let attributedString = NSMutableAttributedString(string: title)
        let range = (title as NSString).range(of: title)
        
        attributedString.addAttribute(
            .font,
            value: font.font,
            range: range
        )
        
        attributedString.addAttribute(
            .foregroundColor,
            value: color,
            range: range
        )
        
        attributedString.addAttribute(
            .kern,
            value: font.letterSpacing,
            range: range
        )
        
        let paragraph = NSMutableParagraphStyle()
        paragraph.lineSpacing = font.lineHeight
        
        attributedString.addAttribute(
            .paragraphStyle,
            value: paragraph,
            range: range
        )
        
        self.attributedText = attributedString
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
