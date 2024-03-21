//
//  ActionButton.swift
//  Test
//
//  Created by Minseo on 2024-03-14.
//

import SwiftUI

struct ActionButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var onTap: () -> ()
    
    init(with title: String, 
         textColor: Color = .white,
         backgroundColor: Color = .blue,
         onTap: @escaping () -> ()) {
        self.title = title
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.onTap = onTap
    }
    
    init(type: ButtonType, onTap: @escaping () -> ()) {
        self.title = type.title
        self.textColor = type.textColor
        self.backgroundColor = type.backgroundColor
        self.onTap = onTap
    }
    
    var body: some View {
//        Button {
//            onTap()
//        } label: {
//            HStack {
//                Spacer()
//                
//                Text(title)
//                    .foregroundColor(textColor)
//                    .bold()
//                Spacer()
//            }
//        }
        
        HStack {
            Spacer()
            
            Text(title)
                .foregroundColor(textColor)
                .bold()
            Spacer()
        }
        .padding(16)
        .background(backgroundColor)
        .cornerRadius(10)
        .onTapGesture {
            onTap()
        }
    }
}

#Preview {
    ActionButton(with: "Test", onTap: {})
}


enum ButtonType {
    case primary, cancel, okay
    
    var title: String {
        switch self {
        case .primary:
            return "Continue"
        case .cancel:
            return "Cancel"
        case .okay:
            return "OK"
        }
    }
    
    var textColor: Color {
        return .white
    }
    
    var backgroundColor: Color {
        switch self {
        case .primary:
            return .blue
        case .cancel:
            return .red
        case .okay:
            return .green
        }
    }
}
