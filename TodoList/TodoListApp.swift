//
//  TodoListApp.swift
//  TodoList
//
//  Created by Tharusha Lakshan on 6/16/24.
//

/*
 MVVM Architecture
 
 -Model - data points
 -View - UI
 -ViewModel - manages models for view
 
 */

import SwiftUI

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            
        }
    }
}
