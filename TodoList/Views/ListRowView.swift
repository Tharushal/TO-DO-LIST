//
//  ListRawView.swift
//  TodoList
//
//  Created by Tharusha Lakshan on 7/22/24.
//
import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}


#Preview {
    
    ListRowView(title: "This is the first item!")
}
