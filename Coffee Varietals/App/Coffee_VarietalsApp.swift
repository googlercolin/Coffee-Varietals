//
//  Coffee_VarietalsApp.swift
//  Coffee Varietals
//
//  Created by Colin Hong on 7/27/21.
//

import SwiftUI

@main
struct Coffee_VarietalsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
