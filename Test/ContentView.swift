//
//  ContentView.swift
//  Test
//
//  Created by Min Kwon on 2024-01-04.
//

import SwiftUI

// TODO
// Network API fetch
// Online image

struct ContentView: View {
    @State var chats: [Chat] = [
        Chat(imageName: "person", userName: "Min", message: "Hello, Hi", updatedDate: "Feb 17", type: .secret),
        Chat(imageName: "globe", userName: "School", message: "...", updatedDate: "Feb 15", type: .group),
        Chat(imageName: "book", userName: "Book club", message: "Bookkeeping", updatedDate: "Feb 10", type: .open)
    ]
    
    @State var newChat: Chat = Chat(imageName: "", userName: "", message: "", updatedDate: "Mar 07")
    @State var showAddForm: Bool = false
    
    var body: some View {
        VStack {
            
            HStack(spacing: 16) {
                ActionButton(type: .primary) {
                    print("continue")
                }
                ActionButton(type: .cancel) {
                    print("cancel")
                }
            }
            .padding(.horizontal, 16)
            
            if showAddForm {
                AddChatForm { newChat in
                    chats.append(newChat)
                    showAddForm.toggle()
                }
            }
            
            List {
                ForEach(chats, id: \.id) { chat in
                    NavigationLink {
                        Text(chat.message)
                    } label: {
                        ChatRow(chat: chat)
                    }
                }
                .onDelete(perform: { indexSet in
                    chats.remove(atOffsets: indexSet)
                })
                .onMove(perform: { from, to in
                    chats.move(fromOffsets: from, toOffset: to)
                })
            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        withAnimation(.easeInOut) {
                            showAddForm.toggle()
                        }
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Text("Chats")
                }
            })
        }
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
