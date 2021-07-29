//
//  OnboardingView.swift
//  OnboardingView
//
//  Created by Colin Hong on 7/28/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: PROPERTIES
    
    var coffees: [Coffee] = coffeeData

    // MARK: BODY

    var body: some View {
        TabView {
            ForEach(coffees[0...4]) { item in
                CoffeeCardView(coffee: item)
            } // LOOP
        } // TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
    }

// MARK: PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
