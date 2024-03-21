//
//  ChatsGridView.swift
//  Test
//
//  Created by Min Kwon on 2024-02-24.
//

import SwiftUI

struct ChatsGridView: View {
    var chats: [Chat] = [
        Chat(imageName: "person", userName: "Min", message: "Hello, Hi", updatedDate: "Feb 17", type: .secret),
        Chat(imageName: "globe", userName: "School", message: "...", updatedDate: "Feb 15", type: .group),
        Chat(imageName: "book", userName: "Book club", message: "Bookkeeping", updatedDate: "Feb 10", type: .open),
        Chat(imageName: "person", userName: "Min", message: "Hello, Hi", updatedDate: "Feb 17", type: .secret),
        Chat(imageName: "globe", userName: "School", message: "...", updatedDate: "Feb 15", type: .group),
        Chat(imageName: "book", userName: "Book club", message: "Bookkeeping", updatedDate: "Feb 10", type: .open),
        Chat(imageName: "person", userName: "Min", message: "Hello, Hi", updatedDate: "Feb 17", type: .secret),
        Chat(imageName: "globe", userName: "School", message: "...", updatedDate: "Feb 15", type: .group),
        Chat(imageName: "book", userName: "Book club", message: "Bookkeeping", updatedDate: "Feb 10", type: .open)
    ]
    
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, content: {
            ForEach(chats, id: \.id) { chat in
                NavigationLink {
                    Text(chat.message)
                } label: {
                    VStack {
                        Spacer()
                        Text(chat.userName)
                        Spacer()
                    }
                    .frame(width: 100, height: 100)
                    .background(Color.gray)
                }
            }
        })
        .toolbar(content: {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                }
            }
            
            ToolbarItem(placement: .topBarLeading) {
                Text("Chats")
            }
        })
    }
}

#Preview {
    ChatsGridView()
}
