//
//  User.swift
//  Peer Programming Assignment
//
//  Created by Eddy Wang on 1/30/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
