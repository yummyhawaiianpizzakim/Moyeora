//
//  Friend.swift
//  Entity
//
//  Created by 김요한 on 2024/03/27.
//  Copyright © 2024 Moyeora. All rights reserved.
//

import Foundation

public struct Friend: Hashable {
    let id: String
    let name: String
    let tagNumber: Int
    let prfileImage: String?
    let followingUserID: String
}
