//
//  ItemModel.swift
//  TodoList
//
//  Created by Tharusha Lakshan on 7/25/24.
//

import Foundation

///immutable struct --> let word insterd of var
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
    
    }



////when we create new items, use this
//ItemModel(title: <#T##String#>, isCompleted: <#T##Bool#>)

////when we update items because we already have id
//ItemModel(id: <#T##String#>, title: <#T##String#>, isCompleted: <#T##Bool#>)
