//
//  CoffeeHeaderView.swift
//  CoffeeHeaderView
//
//  Created by Colin Hong on 7/28/21.
//

import SwiftUI

struct CoffeeHeaderView: View {
    
    var coffee: Coffee
    
    @State private var isAnimatingImage: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("ColorCoffeeGreenLight"), Color("ColorCoffeeGreenDark") ]), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(coffee.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } // ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct CoffeeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeHeaderView(coffee: coffeeData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
