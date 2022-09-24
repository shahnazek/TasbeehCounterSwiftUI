//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Shahnaz EK on 24/09/22.
//

import Foundation
import SwiftUI

struct ExpenseItem : Identifiable, Codable {
    var id = UUID()
    let name: String
    let amount: Int
}
