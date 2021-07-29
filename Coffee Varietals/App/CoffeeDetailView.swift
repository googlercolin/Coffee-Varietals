//
//  CoffeeDetailView.swift
//  CoffeeDetailView
//
//  Created by Colin Hong on 7/28/21.
//

import SwiftUI

struct CoffeeDetailView: View {
    
    var coffee: Coffee
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    // HEADER
                    CoffeeHeaderView(coffee: coffee)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // TITLE
                        Text(coffee.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color("ColorCoffeeDark"))
                        
                        // HEADLINE
                        Text(coffee.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // SUBHEADLINE
                        Text("Learn more about \(coffee.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(Color("ColorCoffeeDark"))
                        
                        // PLANT INFO
                        CoffeePlantInfoView(coffee: coffee)
                        
                        // BEAN INFO
                        CoffeeBeanInfoView(coffee: coffee)
                        
                        // DESCRIPTION
                        Text(coffee.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView(coffee: coffee)
                            .padding(.top, 10)
                            .padding(.bottom, 20)
                        
                    } // VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } // VSTACK
                .navigationBarTitle(coffee.title, displayMode: .inline)
                .navigationBarHidden(true)
            } // SCROLL
            .edgesIgnoringSafeArea(.top)
        } // NAV
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CoffeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetailView(coffee: coffeeData[0])
    }
}
