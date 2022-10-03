//
//  SettingsView.swift
//  Fru!ts Catalog
//
//  Created by APPLE on 02/10/22.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - Property
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - Body
    
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 20 ) {
                    
                    //MARK: - Section 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "fruits catalog", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 3)
                        HStack(alignment: .center , spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("An application that displays useful information about various fruits straight from wikipedia. The colorful graphics captivate the eye.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: - Section 2
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 3)
                        
                        Text("Toggle the button to restart the application. This will show the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                            .font(.footnote)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("RESTART")
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        )
                    }
                    
                    //MARK: - Section 3
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Twisha Solgama")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "Apple Developer", linkDestination: "developer.apple.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@TwishaSolgama", linkDestination: "twitter.com")
                        SettingsRowView(name: "Contact", content: "123abc@gmail.com")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                    
                }// eo VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
                
            }// eo ScrollView
            
        }// eo NavigationView
        
    }
}

struct SettingsViewSwift_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
