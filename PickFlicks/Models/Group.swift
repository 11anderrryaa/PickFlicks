//
//  Group.swift
//  PickFlicks
//
//  Created by Paul Bunnell on 3/11/21.
//

import Foundation

struct Group {
    var sessionID: Int
    var groupName: String
    var activeGroupMembers: [User]
    var topPicks: [Movie]
}
