//
//  ContentView.swift
//  iExpense
//
//  Created by Sean Walker on 8/31/23.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                Button("Add Number") {
                    withAnimation {
                        numbers.append(currentNumber)
                    }
                    currentNumber += 1
                }
            }
            .navigationTitle("onDelete")
            .toolbar {
                EditButton()
            }
        }
    }
    
    func removeRows(at offsets: IndexSet) {
            numbers.remove(atOffsets: offsets)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
