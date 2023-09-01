//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Sean Walker on 8/31/23.
//

import Foundation


struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: ExpenseType
    let amount: Double
}
