//
//  Expenses.swift
//  iExpense
//
//  Created by Sean Walker on 8/31/23.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]() 
}
