//
//  User.swift
//  1st Workshop
//
//  Created by Wissa Azmy on 10/12/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import Foundation

struct User: Codable {
    let realm, username, email: String
    let emailVerified: Bool
    let id: Int
}
