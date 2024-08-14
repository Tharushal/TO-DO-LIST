//
//  ListViewModel.swift
//  TodoList
//
//  Created by Tharusha Lakshan on 7/27/24.
//

import Foundation
/*
 CRUD Functions
 Create
 Read
 Update
 Delete
 */


class ListViewModel: ObservableObject{
    
    @Published var items:[ItemModel] = []{
        didSet {
            saveItems()
        }
    }
    let itemsKey: String = "items_list"
    
    init(){
        
        getItems()
    }
    
    
    func getItems() {
        
//        let newItems = [
//            ItemModel(title: "This is the first item!", isCompleted: false),
//            ItemModel(title: "This is the second item!", isCompleted: true),
//            ItemModel(title:  "This is the Third!", isCompleted: false),
//    //        "This is the first item!",
//    //        "This is the second item!",
//    //        "This is the Third!"
//        ]
//        items.append(contentsOf: newItems)
        
        
        guard 
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {return}
        
        self.items = savedItems
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
    
    func updateItem(item:ItemModel){
        
///same code as below
        
//        if let index = items.firstIndex(where: {(existingItem) -> Bool in
//            return existingItem.id == item.id
//        })
//        {
//            //run this code
//        }
        
        if let index = items.firstIndex(where: { $0.id == item.id }){
            items[index] = item.updateCompletion()
//            items[index] = ItemModel (title: item.title, isCompleted: !item.isCompleted)
        }
        
    }
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
}
