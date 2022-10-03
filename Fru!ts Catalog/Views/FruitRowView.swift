//
//  FruitRowView.swift
//  Fru!ts Catalog
//
//  Created by APPLE on 26/09/22.
//

import SwiftUI

struct FruitRowView: View {
    
    //MARK: - Property
    var fruit: Fruit
    
    //MARK: - Body
    var body: some View {
        HStack{
            
            //Icon
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.7), radius: 3, x: 2, y: 2)
                .background(
                    .linearGradient(
                        Gradient(colors:  fruit.gradientColors),
                        startPoint: .top, endPoint: .bottom
                    )
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                
                //Title
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                //Headline
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
        }
    }
}

//MARK: - Preview
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
