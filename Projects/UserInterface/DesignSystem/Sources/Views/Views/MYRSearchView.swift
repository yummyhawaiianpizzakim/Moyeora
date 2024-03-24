//
//  MoyeoraSearchView.swift
//  DesignSystem
//
//  Created by 김요한 on 2024/03/20.
//  Copyright © 2024 Moyeora. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift

public final class MYRSearchView: UIView {
    let disposeBag = DisposeBag()
    // MARK: UI
    
    private let backButton = MYRIconButton(image: .Moyeora.chevronLeft, backgroundColor: .neutral(.white))
    
    private let iconTextField = MYRIconTextField(placeholder: "검색", icon: .Moyeora.search)
    
    // MARK: Properties
    public override var intrinsicContentSize: CGSize {
        return UIView.layoutFittingExpandedSize
    }
    
    // MARK: Initializers
    private override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureAttributes()
        self.configureUI()
    }
    
    public init() {
        super.init(frame: .zero)
        self.configureAttributes()
        self.configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension MYRSearchView {
    func configureUI() {
        [self.backButton, self.iconTextField].forEach {
            self.addSubview($0)
        }
        
        self.backButton.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(28)
        }
        
        self.iconTextField.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(self.backButton.snp.trailing).offset(MYRConstants.contentSpacing)
            make.trailing.equalToSuperview()
            make.height.equalTo(40)
        }
    }
    
    func configureAttributes() {
        
    }
    
}

public extension MYRSearchView {
    func bindTitle(searchText: String) {
        self.iconTextField.text = searchText
    }
    
    var backButtonDidTap: Observable<Void> {
        self.backButton.rx.tap
            .asObservable()
    }
}
