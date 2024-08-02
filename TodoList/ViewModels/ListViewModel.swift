//
//  ListViewModel.swift
//  TodoList
//
//  Created by Tharusha Lakshan on 7/27/24.
//

import Foundation


class ListViewModel: ObservableObject{
    
    @Published var items:[ItemModel] = []
    
    init(){
        
        getItems()
    }
    
    
    func getItems() {
        
        let newItems = [
            ItemModel(title: "This is the first item!", isCompleted: false),
            ItemModel(title: "This is the second item!", isCompleted: true),
            ItemModel(title:  "This is the Third!", isCompleted: false),
    //        "This is the first item!",
    //        "This is the second item!",
    //        "This is the Third!"
        ]
        items.append(contentsOf: newItems)
        
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int ){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String){
        
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
        
    }
}
