//
//  FruitDetailView.swift
//  Fru!ts Catalog
//
//  Created by APPLE on 26/09/22.
//

import SwiftUI

struct FruitDetailView: View {
    
    //MARK: - Property
    var fruit: Fruit
    
    //MARK: - Body
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    //Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20){
                        
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                             .multilineTextAlignment(.leading)
                        
                        //Nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        //Sub-Headline
                        Text(
                            "Learn more about \(fruit.title)"
                                .uppercased()
                        )
                        .fontWeight(.bold)
                        .foregroundColor(fruit.gradientColors[1])
                        
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading )
                        
                        //Link
                        SourceLinkView(fruit: fruit)
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                        
                    }//eo VStack(alignment: .leading, spacing: 20)
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//eo VStack(alignment: .center, spacing: 20)
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }//eo ScrollView
            .edgesIgnoringSafeArea(.top)
        }//eo NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
