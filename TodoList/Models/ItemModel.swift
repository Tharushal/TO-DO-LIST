//
//  ItemModel.swift
//  TodoList
//
//  Created by Tharusha Lakshan on 7/25/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
