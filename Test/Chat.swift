//
//  Chat.swift
//  Test
//
//  Created by Min Kwon on 2024-02-19.
//

import Foundation

struct Chat {
    var id: UUID = UUID()
    var imageName: String
    var userName: String
    var message: String
    var updatedDate: String
    var type: ChatType = .normal
    
    var systemDate: Date = Date()
    
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d"
        
        if Calendar.current.isDateInYesterday(systemDate) {
            return "Yesterday"
        } else if Calendar.current.isDateInToday(systemDate) {
            return "Today"
        } else {
            return dateFormatter.string(from: systemDate)
        }
    }
}
