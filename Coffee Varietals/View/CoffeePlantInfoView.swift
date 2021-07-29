//
//  CoffeePlantInfoView.swift
//  CoffeePlantInfoView
//
//  Created by Colin Hong on 7/28/21.
//

import SwiftUI

struct CoffeePlantInfoView: View {
    
    var coffee: Coffee
    let information: [String] = ["Bean size", "Quality potential at high altitude", "Yield potential", "Coffee leaf rust", "Coffee berry disease", "Nematodes", "Lineage"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Varietal info") {
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
                        Text(coffee.plantInfo[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } // BOX
    }
}

struct CoffeePlantInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeePlantInfoView(coffee: coffeeData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
