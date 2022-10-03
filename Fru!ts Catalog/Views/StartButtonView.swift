//
//  StartButtonView.swift
//  Fru!ts Catalog
//
//  Created by APPLE on 22/09/22.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: - Property
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - Body
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 9) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.5)
            )
        } // eo Button
        .accentColor(Color.white)
    }
}

//MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
