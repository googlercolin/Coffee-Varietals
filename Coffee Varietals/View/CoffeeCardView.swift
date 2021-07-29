//
//  CoffeeCardView.swift
//  CoffeeCardView
//
//  Created by Colin Hong on 7/28/21.
//

import SwiftUI

struct CoffeeCardView: View {
    // MARK: PROPERTIES
    
    var coffee: Coffee
    
    @State private var isAnimating: Bool = false
    
    // MARK: BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // COFFEE: IMAGE
                Image(coffee.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("ColorCoffeeMid"), lineWidth: 4))
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .padding()
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // COFFEE: TITLE
                Text(coffee.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // COFFEE: HEADLINE
                Text(coffee.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON: SEE MORE
                SeeMoreView()
                // Spacer(minLength: 32)
                
            } // VSTACK
        } // ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorCoffeeLight"), Color("ColorCoffeeDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: PREVIEW

struct CoffeeCardView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeCardView(coffee: coffeeData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
