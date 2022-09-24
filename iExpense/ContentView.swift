//
//  ContentView.swift
//  iExpense
//
//  Created by Shahnaz EK on 07/09/22.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false

    
    var body: some View {
        
        
        NavigationView {
            
                List {
                    
                    ForEach(expenses.items) { item in
                        
                        VStack(alignment: .leading, spacing : 10) {
                            Text(item.name)
                                .font(.headline)
                            HStack {
                                Text("Count:")
                                Text(item.amount, format: .currency(code: ""))

                            }

                        }
                    }
                    .onDelete(perform: removeItems)
                }
              
                .toolbar {
                    
                    Button {
                        showingAddExpense = true
                    } label: {
                        
                        NavigationLink(destination: AddView(expenses: expenses)) {
                            Image(systemName: "plus")
                        }
                        
                    }
                    
                }

            .navigationTitle("Counter")
        }
        
    }
    
    
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
