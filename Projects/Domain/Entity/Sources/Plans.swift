//
//  Plans.swift
//  Entity
//
//  Created by 김요한 on 2024/03/25.
//  Copyright © 2024 Moyeora. All rights reserved.
//

import Foundation

struct Plans: Hashable {
    enum Status {
        case active
        case inactive
    }
    
    let id: String
    let title: String
    let date: Date
    let time: Date
    let location: String
    let latitude: Double
    let longitude: Double
    let makingUserID: String
    let usersID: [String]
    var status: Status
}
