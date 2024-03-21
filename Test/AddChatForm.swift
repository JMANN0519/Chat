//
//  AddChatForm.swift
//  Test
//
//  Created by Minseo on 2024-03-07.
//

import SwiftUI

struct AddChatForm: View {
    
    @State var chat: Chat = Chat(imageName: "", userName: "", message: "", updatedDate: "Mar 07")
    
    // Closure
    var onAddChat: (Chat) -> ()
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("Image Name", text: $chat.imageName)
            TextField("User Name", text: $chat.userName)
            TextField("Message", text: $chat.message)
            
            Button(action: {
                // Closure
                onAddChat(chat)
                
                // Reset
                chat = Chat(
                    imageName: "",
                    userName: "",
                    message: "",
                    updatedDate: "Mar 07"
                )
            }, label: {
                Text("Add Chat")
            })
        }
    }
}

#Preview {
    AddChatForm(onAddChat: {_ in })
}
