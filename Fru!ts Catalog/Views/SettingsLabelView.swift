//
//  SettingsLabelView.swift
//  Fru!ts Catalog
//
//  Created by APPLE on 02/10/22.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK: - Property
    var labelText: String
    var labelImage: String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "fruits catalog", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
