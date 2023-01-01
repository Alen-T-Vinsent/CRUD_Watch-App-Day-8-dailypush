//
//  AddItem.swift
//  Task_Watch_Day-8 Watch App
//
//  Created by Apple  on 21/12/22.
//

import SwiftUI

struct AddItem: View {
    @State var memoText = ""
    
    @Environment(\.managedObjectContext) var context
    @Environment(\.presentationMode) var presentation
    
    
    var body: some View {
        VStack(spacing:15){
            TextField("Memories....",text: $memoText)
            Button {
                print("button inside addItem")
                addMemo()
            } label: {
                Text("Save")
                    .padding(.vertical,10)
                    .frame(maxWidth: .infinity,alignment: .center)
                    .background(Color.orange)
                    .cornerRadius(15)
            }
            .padding(.horizontal)
            .buttonStyle(PlainButtonStyle())
            .disabled(memoText == "")
        }
        .navigationTitle("Add Memo")
    }
    
    //Adding Memo
    func addMemo(){
        let memo = Memo(context: context)
        memo.title = memoText
        memo.dateAdded = Date()
        
        //saving
        do{
            try context.save()
            //if success
            //close view
            presentation.wrappedValue.dismiss()
        }catch{
            print(error.localizedDescription)
        }
        
    }
}

