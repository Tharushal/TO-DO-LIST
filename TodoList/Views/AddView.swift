//
//  AddView.swift
//  TodoList
//
//  Created by Tharusha Lakshan on 7/22/24.
//

import SwiftUI

struct AddView: View {
    
    @State var textFeildText: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here", text: $textFeildText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color("TextFeildColor"))
                .cornerRadius(10)
                
                Button {
            
                } 
            label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                }

            }
            .padding(14)
        }
        .navigationTitle("Add an Item🖊️")
    }
}

#Preview {
    NavigationView{
        AddView()
    }
    
}
