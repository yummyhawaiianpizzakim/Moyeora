//
//  MYRSearchUserTVC.swift
//  DesignSystem
//
//  Created by 김요한 on 2024/03/24.
//  Copyright © 2024 Moyeora. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

public final class MYRSearchUserTVC: UITableViewCell {
    public enum CellType {
        case friends
        case searchUsers
        case blocks
    }
    
    private enum Metric {
        static let leadingMargin = 16
        static let trailingMargin = -leadingMargin
        static let stackPadding = 16
        static let buttonPadding = 4
        static let cellHeight = 64
        static let profileIconWidth = 48
        static let plusIconWidth = 24
        static let blockIconWidth = 64
        static let blockIconHeight = 34
    }
    
    private lazy var userStackView: UIStackView = {
        let view = UIStackView()
        view.spacing = CGFloat(Metric.stackPadding)
        view.distribution = .fill
        view.axis = .horizontal
        return view
    }()
    
    private lazy var profileView = MYRIconView(size: .custom(.init(width: Metric.profileIconWidth, height: Metric.profileIconWidth)), image: .Moyeora.user, isCircle: true)
    
    private lazy var userNameLabel = MYRLabel("이름", textColor: .neutral(.balck), font: .body1)
    
    private lazy var userTagLabel = MYRLabel("#1234", textColor: .neutral(.gray2), font: .body3)
    
    public lazy var plusIcon = MYRIconButton(image: .Moyeora.plus, backgroundColor: .primary(.primary2), cornerRadius: MYRConstants.cornerRadiusSmall)
    
    public lazy var blockIcon = MYRTextButton("차단해제", textColor: .neutral(.balck), font: .body3, backgroundColor: .neutral(.gray4), cornerRadius: MYRConstants.cornerRadiusMedium)
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configureAttributes()
        self.configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension MYRSearchUserTVC {
    func configureAttributes() {
        self.selectionStyle = .none
        self.profileView.backgroundColor = .moyeora(.neutral(.gray5))
    }
    
    func configureUI() {
        [self.userStackView].forEach {
            self.contentView.addSubview($0)
        }
        
        [self.profileView, self.userNameLabel,
         self.userTagLabel].forEach {
            self.userStackView.addArrangedSubview($0)
        }
        
        self.userStackView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(Metric.leadingMargin)
            make.centerY.equalToSuperview()
        }
    }
}

public extension MYRSearchUserTVC {
    func bindCell(profileURL: String, userName: String, userTag: String) {
        self.profileView.bindImage(urlString: profileURL)
        self.userNameLabel.setText(with: userName)
        self.userTagLabel.setText(with: "#\(userTag)")
    }
    
    func setButton(cellType: CellType) {
        switch cellType {
        case .blocks:
            self.contentView.addSubview(self.blockIcon)
            self.blockIcon.snp.makeConstraints { make in
                make.centerY.equalToSuperview()
                make.trailing.equalToSuperview().offset(Metric.trailingMargin)
                make.leading.equalTo(self.userTagLabel.snp.trailing).offset(Metric.buttonPadding)
                make.width.equalTo(Metric.blockIconWidth)
                make.height.equalTo(Metric.blockIconHeight)
                
            }
        case .friends:
            return
        case .searchUsers:
            self.contentView.addSubview(self.plusIcon)
            self.plusIcon.snp.makeConstraints { make in
                make.centerY.equalToSuperview()
                make.trailing.equalToSuperview().offset(Metric.trailingMargin)
            }
        }
    }
}
