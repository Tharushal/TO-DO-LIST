//
//  AddView.swift
//  TodoList
//
//  Created by Tharusha Lakshan on 7/22/24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFeildText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here", text: $textFeildText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color("TextFeildColor"))
                .cornerRadius(10)
                
                Button(action: saveButtonPressed,
                label: {
                    Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                })

                       }
                
            .padding(14)
        }
        .navigationTitle("Add an Item🖊️")
    }
    
    func saveButtonPressed() {
        if textIsAppropiate(){
            listViewModel.addItem(title: textFeildText)
            presentationMode.wrappedValue.dismiss()
        }
        
    }
    
    func textIsAppropiate() -> Bool {
        if textFeildText.count < 3 {
            return false
        }
        return true
    }
    
}

#Preview {
    NavigationView{
        AddView()

    }
    .environmentObject(ListViewModel())
    
}
