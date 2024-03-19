//
//  DesignSystemVC.swift
//  DesignSystemDemo
//
//  Created by 김요한 on 2024/03/18.
//  Copyright © 2024 Moyeora. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa
import Kingfisher
import RxRelay
import RxGesture
import DesignSystem

final class DesignSystemVC: UIViewController {
    let disposBag = DisposeBag()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureAttributes()
        self.configureUI()
    }
}

private extension DesignSystemVC {
    func configureAttributes() {
        
    }
    
    func configureUI() {
        
    }
}
