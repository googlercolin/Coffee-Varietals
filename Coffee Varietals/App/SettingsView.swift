//
//  SettingsView.swift
//  SettingsView
//
//  Created by Colin Hong on 7/28/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: S1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Coffee Varietals", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 3, x: 2, y: 2)
                            Text("There are dozens of widely cultivated Arabica coffee varietals around the world, and each is unique in its performance and adaptation to local conditions. The different varietals also have varied appearances and taste differences, but these can also be influenced by how they are processed." )
                        .font(.footnote)
                        } // HSTACK
                    }
                    
                    // MARK: S2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                        ) {
                            Divider().padding(.vertical, 4)
                            Text("If you wish, you may restart the application by toggling the switch in this box. That way, you will return to the welcome screen.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            Toggle(isOn: $isOnboarding) {
                                if isOnboarding {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.secondary)
                                }
                            }
                            .padding()
                            .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .circular)))
                        }
                    
                    // MARK: S3
                    
                    GroupBox(
                    label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Colin Hong")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "Colin's Linktree", linkDestination: "linktr.ee/googler")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                    }
                    
                } // VSTACK
                .navigationBarTitle("Settings", displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {presentationMode.wrappedValue.dismiss()}) {
                            Image(systemName: "xmark")
                        }
                    )
                .padding()
            } // SCROLL
        } // NAV
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
