//
//  Chat.swift
//  Entity
//
//  Created by 김요한 on 2024/03/25.
//  Copyright © 2024 Moyeora. All rights reserved.
//

import Foundation

struct Chat: Hashable {
     enum SenderType {
         case mine
         case other
     }
     
     let id: String
     let senderUserID: String
     let senderType: SenderType
     let content: String
     let createdAt: Date
}


extension Chat {
    struct ChatedUser: Hashable {
        let chatID: String
        let chatedUser: User
    }
}
