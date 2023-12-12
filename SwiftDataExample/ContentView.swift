//
//  ContentView.swift
//  SwiftDataExample
//
//  Created by Süleyman Çambel on 12.12.2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var text: String
    @Environment(\.modelContext) private var context

    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
            Text("Add Value")
          
            TextField(" ", text: $text)
                .padding()
                       .background(Color.black.opacity(0.1))
                       .cornerRadius(15)
                       .padding()
            
            Button("Add") {
                addItem()
            }

            List {
                ForEach(items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Button {
                            updateItem(item)
                        } label: {
                            Image(systemName: "face.smiling.fill")
                        }
                    }
                }
                .onDelete { indexes in
                    for index in indexes {
                       onDeleteItem(items[index])
                    }
                    
                }
            }
        } .padding()

        
}
    
    func updateItem(_ item: DataItem) {
        item.name = "Updated"
        try? context.save()
    }
    
    func addItem () {
        
        let item = DataItem(name: text)
        context.insert(item)
    }
    
    func onDeleteItem(_ item: DataItem) {
        //delete
        context.delete(item)
    }


}
