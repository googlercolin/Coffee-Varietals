//
//  CoffeeBeanInfoView.swift
//  CoffeeBeanInfoView
//
//  Created by Colin Hong on 7/28/21.
//

import SwiftUI

struct CoffeeBeanInfoView: View {
    
    var coffee: Coffee
    let information: [String] = ["Country", "Region", "Farm", "Elevation (masl)", "Roaster", "Roast date", "Cupping notes"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Bean info") {
                ForEach(0 ..< information.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(information[item])
                        }
                        .foregroundColor(Color("ColorCoffeeDark"))
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(coffee.beanInfo[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } // BOX
    }
}

struct CoffeeBeanInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeBeanInfoView(coffee: coffeeData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
