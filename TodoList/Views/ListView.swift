//
//  ListView.swift
//  TodoList
//
//  Created by Tharusha Lakshan on 6/18/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first item!", isCompleted: false),
        ItemModel(title: "This is the second item!", isCompleted: true),
        ItemModel(title:  "This is the Third!", isCompleted: false),
//        "This is the first item!",
//        "This is the second item!",
//        "This is the Third!"
    ]
    
    var body: some View {
        
        List{
            ForEach(items){ item in
               
                ListRowView(item: item)
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

