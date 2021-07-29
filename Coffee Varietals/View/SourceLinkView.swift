//
//  SourceLinkView.swift
//  SourceLinkView
//
//  Created by Colin Hong on 7/28/21.
//

import SwiftUI

struct SourceLinkView: View {
    
    var coffee: Coffee
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link(coffee.plantInfo.reversed()[1], destination: URL(string: coffee.plantInfo.reversed()[0])!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(coffee: coffeeData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
