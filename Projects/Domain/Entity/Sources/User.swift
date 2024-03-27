//
//  User.swift
//  Entity
//
//  Created by 김요한 on 2024/03/25.
//  Copyright © 2024 Moyeora. All rights reserved.
//

import Foundation

public struct User: Hashable {
    let id: String
    let name: String
    let tagNumber: Int
    let profileImage: URL?
    let fcmToken: String
}
