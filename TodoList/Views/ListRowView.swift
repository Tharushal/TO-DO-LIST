//
//  ListRawView.swift
//  TodoList
//
//  Created by Tharusha Lakshan on 7/22/24.
//
import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle": "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}


#Preview{
    Group {
        ListRowView(item: ItemModel(title: "1st item", isCompleted: false))
        ListRowView(item: ItemModel(title: "2nd item", isCompleted: true))
    }
    
}

//wrong code
//#Preview {
//
////    static var item1 = ItemModel(title: "1st item", isCompleted: false)
////   static  var item1 = ItemModel(title: "2nd item", isCompleted: true)
//
////    ListRowView(item: ItemModel)
////    static var previews: some View {
////        Group{
////            ListRowView(item: item1)
////            ListRowView(item: item2)
////        }
////    }
//}
