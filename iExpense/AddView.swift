//
//  AddView.swift
//  iExpense
//
//  Created by Shahnaz EK on 08/09/22.
//

import SwiftUI

struct AddView: View {
    
    @State private var name = ""
    @State private var amount = 0

    
    // the values added to expenses class object from ContentView will be shared here.
    @ObservedObject var expenses: Expenses
    @Environment(\.dismiss) var dismiss


    
    
    var body: some View {
            
            
                    Form {
                        
                        TextField("Name", text: $name)
                        Text("\(amount)")
                        Button("Tap Me") {
                            amount += 1
                        }
                        
                    }
                    .navigationTitle("Add New Dhikr")
                    .toolbar {
                        
                        if name != "" {
                            
                            Button("Save") {
                                let item = ExpenseItem(name: name, amount: amount)
                                expenses.items.append(item)
                                dismiss()

                            }
                            
                        }
                        
                        
                        
                        
                    }
                


    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
