//
//  MainTabView.swift
//  Test
//
//  Created by Min Kwon on 2024-02-24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            NavigationStack {
                ContentView()
                    .navigationTitle("Chats")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Label("Chats", systemImage: "bubble")
            }
            
            NavigationStack {
                ChatsGridView()
                    .navigationTitle("GridView")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Label("GridView", systemImage: "grid")
            }
            
            NavigationStack {
                SafeArea()
            }
            .tabItem {
                Label("SafeArea", systemImage: "person")
            }
            
            NavigationStack {
                SafeArea()
            }
            .tabItem {
                Label("SafeArea", systemImage: "person")
            }
        }
    }
}

#Preview {
    MainTabView()
}
