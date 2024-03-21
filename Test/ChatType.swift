//
//  ChatType.swift
//  Test
//
//  Created by Min Kwon on 2024-02-24.
//

import SwiftUI

enum ChatType {
    case group, open, secret, normal
    
    var iconName: String {
        switch self {
        case .group:
            return "person.3"
        case .open:
            return "bubble"
        case .secret:
            return "lock"
        case .normal:
            return ""
        }
    }
}
