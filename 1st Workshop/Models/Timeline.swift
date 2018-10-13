//
//  Timeline.swift
//  1st Workshop
//
//  Created by Wissa Azmy on 10/12/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import Foundation
typealias TimelineResp = [Timeline]

struct Timeline: Codable {
    let date, text, image: String
    let user: User
    let id: Int
}






