//
//  ChatRow.swift
//  Test
//
//  Created by Min Kwon on 2024-02-19.
//

import SwiftUI

struct ChatRow: View {
    
    var chat: Chat
    // test
    var body: some View {
        HStack {
            Image(systemName: chat.imageName)
                .imageScale(.medium)
                .foregroundStyle(.tint)
            
            VStack(alignment:.leading) {
                HStack {
                    Text(chat.userName)
                        .font(.system(size: 16, weight: .semibold))
                    
                    Image(systemName: chat.type.iconName)
                        .foregroundStyle(.black)
                }
                Text(chat.message)
                    .font(.system(size: 12))
                    .foregroundStyle(.black.opacity(0.7))
            }
            
            Spacer()
            
            Text(chat.formattedDate)
                .font(.system(size: 16))
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    ChatRow(chat: Chat(imageName: "globe", userName: "Min", message: "Test", updatedDate: "Feb 10", type: .secret))
}
