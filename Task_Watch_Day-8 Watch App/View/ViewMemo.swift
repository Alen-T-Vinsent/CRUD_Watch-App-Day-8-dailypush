//
//  NewDA.swift
//  Task_Watch_Day-8 Watch App
//
//  Created by Apple  on 22/12/22.
//

import SwiftUI
import CoreData

struct ViewMemo: View {
    @FetchRequest(entity: Memo.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Memo.dateAdded, ascending: false)],animation: .easeIn) var results:FetchedResults<Memo>
    var body: some View {
        List(results){item in
            HStack(spacing: 10){
                VStack(alignment: .leading,spacing: 3, content: {
                    Text(item.title ?? "")
                        .font(.system(size:12))
                        .foregroundColor(.white)
                    Text("Last Modifier")
                        .font(.system(size:8))
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    Text(item.dateAdded ?? Date(),style: .date)
                        .font(.system(size:8))
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                })
                
                Spacer(minLength: 4)
                
                Button {
                    NavigationLink(destination: AddItem(), label: {
                        
                    })
                } label: {
                    Image(systemName: "square.and.pencil")
                        .font(.callout)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Color.orange )
                        .cornerRadius(8)
                }
                .buttonStyle(plain)

            }
        }
        .listStyle(CarouselListStyle())
        .overlay(
            Text(results.isEmpty ? "No Memo's found " : "")
        )
    }
}

struct ViewMemo_p: PreviewProvider {
    static var previews: some View {
        ViewMemo()
    }
}
