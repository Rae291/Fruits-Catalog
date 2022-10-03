//
//  OnboardingView.swift
//  Fru!ts Catalog
//
//  Created by APPLE on 22/09/22.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - Property
    
    var fruits: [Fruit] = fruitsData
    
    
    //MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(fruits[0...4]) { item in
                FruitCardView(fruit: item)
            }
            .edgesIgnoringSafeArea(.trailing)
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
