//
//  ContentView.swift
//  Coffee Varietals
//
//  Created by Colin Hong on 7/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var coffees: [Coffee] = coffeeData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(coffees) { item in
                    NavigationLink(destination: CoffeeDetailView(coffee: item)) {
                        CoffeeRowView(coffee: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Varietals")
            .navigationBarItems(
                trailing:
                    Button(action: {isShowingSettings = true}) {
                        Image(systemName: "slider.horizontal.3")
                    } // BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        } // NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coffees: coffeeData)
    }
}
