//
//  MoyeoraNavigationView.swift
//  DesignSystem
//
//  Created by 김요한 on 2024/03/20.
//  Copyright © 2024 Moyeora. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift

public final class MYRNavigationView: UIView {
    // MARK: Properties
    let disposeBag = DisposeBag()
    
    public override var intrinsicContentSize: CGSize {
        return UIView.layoutFittingExpandedSize
    }
    
    // MARK: UI
    private var label = UILabel()
    
    private var backButton = MYRIconButton(image: nil)
    
    private lazy var rightButton = MYRIconButton(image: nil)
    
    // MARK: Initializers
    private override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public init(title: String,
                textColor: UIColor.MYRColorSystem = .neutral(.balck),
                font: UIFont.MYRFontSystem = .h2,
                isBackButton: Bool = false,
                rightButton: UIImage? = nil
    ) {
        super.init(frame: .zero)
        self.configureAttributes(title: title, textColor: textColor, font: font, isBackButton: isBackButton, rightButton: rightButton)
        self.configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension MYRNavigationView {
    func configureAttributes(
        title: String,
        textColor: UIColor.MYRColorSystem,
        font: UIFont.MYRFontSystem,
        isBackButton: Bool,
        rightButton: UIImage?
    ) {
        let label = MYRLabel(title, textColor: textColor, font: font)
        self.label = label
        
        if let rightButton {
            self.configureRightButton(image: rightButton)
        }
        
        if isBackButton {
            self.configureBackButton()
        }
    }
    
    func configureUI() {
        [self.label].forEach {
            self.addSubview($0)
        }
        
        self.label.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(272)
        }
    }
    
    func configureBackButton() {
        let backButton = MYRIconButton(image: .Moyeora.chevronLeft, backgroundColor: .neutral(.white))
        self.backButton = backButton
        
        self.addSubview(self.backButton)
        self.backButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview()
        }
    }
    
    func configureRightButton(image: UIImage) {
        let rightButton = MYRIconButton(image: image, backgroundColor: .neutral(.white))
        self.rightButton = rightButton
        
        self.addSubview(self.rightButton)
        self.rightButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}

public extension MYRNavigationView {
    func bindTitle(searchText: String) {
        
    }
    
    var backButtonDidButton: Observable<Void> {
        self.backButton.rx.tap
            .asObservable()
    }
    
    var RightButtonDidButton: Observable<Void> {
        self.rightButton.rx.tap
            .asObservable()
    }
}
