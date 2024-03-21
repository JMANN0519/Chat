//
//  SafeArea.swift
//  Test
//
//  Created by Min Kwon on 2024-02-24.
//

import SwiftUI

struct SafeArea: View {
    var body: some View {
        VStack {
            HStack {
                Text("Safe Area Top")
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                Text("Safe Area Bottom")
            }
        }
        .background(Color.brown)
    }
}

#Preview {
    SafeArea()
}
