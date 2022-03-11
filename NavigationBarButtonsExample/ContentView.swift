//
//  ContentView.swift
//  NavigationBarButtonsExample
//
//  Created by Maxime Tanter on 10/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    let shoppingList = [ShoppingItem(name: "Apple"),
                        ShoppingItem(name: "Milk"),
                        ShoppingItem(name: "Rice"),
                        ShoppingItem(name: "Bread")]
    
    var body: some View {
        NavigationView {
            List(shoppingList) { item in
                Text(item.name)
            }
            .navigationTitle("Shopping List")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // Perform an action
                        print("Add Item")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // Perform an action
                        print("Cancel Button Tapped")
                    } label: {
                        Text("Cancel")
                    }
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        // Perform an action
                        print("Add Item tapped")
                    } label: {
                        Text("Add Item")
                            .frame(width: 100, height: 40)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// A Shopping Item conform to Hashable and Identifiable to be used directly in the List() constructor
struct ShoppingItem: Hashable, Identifiable {
    let id = UUID()
    let name: String
}
