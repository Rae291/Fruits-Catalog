//
//  SettingsRowView.swift
//  Fru!ts Catalog
//
//  Created by APPLE on 02/10/22.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: - Property
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 3)
            HStack(alignment: .center , spacing: 10) {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.blue)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Twisha Solgama")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingsRowView(name: "Website", linkLabel: "Google", linkDestination: "www.google.com")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
