//
//  SeeMoreView.swift
//  SeeMoreView
//
//  Created by Colin Hong on 7/28/21.
//

import SwiftUI

struct SeeMoreView: View {
    // MARK: PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    // MARK: BODY

    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("See More")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } // BUTTON
        .accentColor(Color.white)
    }
    }

// MARK: PREVIEW

struct SeeMoreView_Previews: PreviewProvider {
    static var previews: some View {
        SeeMoreView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
