//
//  ListView.swift
//  TodoList
//
//  Created by Tharusha Lakshan on 6/18/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
//    @State var items: [ItemModel] = [
//        ItemModel(title: "This is the first item!", isCompleted: false),
//        ItemModel(title: "This is the second item!", isCompleted: true),
//        ItemModel(title:  "This is the Third!", isCompleted: false),
////        "This is the first item!",
////        "This is the second item!",
////        "This is the Third!"
//    ]
    
    var body: some View {
        
        ZStack{
            if listViewModel.items.isEmpty{
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            }else
            {
                List{
                    ForEach(listViewModel.items){ item in
                       
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear){
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                    
                }
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
    
    
//    func deleteItem(indexSet: IndexSet){
//        items.remove(atOffsets: indexSet)
//    }
//    
//    func moveItem(from: IndexSet, to: Int ){
//        items.move(fromOffsets: from, toOffset: to)
//    }
    
    
}

#Preview {
    NavigationView{
        ListView()
            .environmentObject(ListViewModel())
    }
}

