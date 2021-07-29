//
//  CoffeeRowView.swift
//  CoffeeRowView
//
//  Created by Colin Hong on 7/28/21.
//

import SwiftUI

struct CoffeeRowView: View {
    // MARK: PROPERTIES
    
    var coffee: Coffee

    // MARK: BODY

    var body: some View {
        HStack(spacing: 15) {
            Image(coffee.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .cornerRadius(8)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
//                .background(
//                    LinearGradient(gradient: Gradient(colors: [Color("ColorCoffeeLight"), Color("ColorCoffeeDark")]), startPoint: .top, endPoint: .bottom)
//                )
            VStack(alignment: .leading, spacing: 5) {
                Text(coffee.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(coffee.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
            }
        } // HSTACK
    }
}

// MARK: PREVIEW

struct CoffeeRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeRowView(coffee: coffeeData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
