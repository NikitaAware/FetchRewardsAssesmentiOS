//
//  SearchByCategory.swift
//  FetchRecipe
//
//  Created by Nikita Aware on 6/24/23.
//
import SwiftUI
import Foundation
struct ContentView: View {
    @State private var selection = "Search by name"
    let options = ["Search by name", "Search by id", "Search by Category"]
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Select a search option", selection: $selection) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
                NavigationLink(destination: SearchByCategory.SearchByCategoryView(title: selection)) {
                    Text("Search")
                }.buttonStyle(BorderedProminentButtonStyle())
            }
            
        }
        
    }
}



