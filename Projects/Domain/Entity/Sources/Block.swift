//
//  Block.swift
//  Entity
//
//  Created by 김요한 on 2024/03/25.
//  Copyright © 2024 Moyeora. All rights reserved.
//

import Foundation

public struct Block {
    let blockId: String
    let blockedUserId: String
    let userId: String
}

extension Block {
    struct BlockedUser: Hashable {
        let blockId: String
        let blockedUser: User
    }
}
