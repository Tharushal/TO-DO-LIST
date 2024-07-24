//
//  ListView.swift
//  TodoList
//
//  Created by Tharusha Lakshan on 6/18/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first item!",
        "This is the second item!",
        "This is the Third!"
    ]
    
    var body: some View {
        List{
            ForEach(items, id: \.self){ item in
                ListRowView(title: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("TO DO LIST📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
        NavigationLink("Add", destination: AddView())
        )
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}

