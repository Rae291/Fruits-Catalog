//
//  FruitCardView.swift
//  Fru!ts Catalog
//
//  Created by APPLE on 22/09/22.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK: - Property
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    //MARK: - Body
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                //Fruit Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.7)
                
                //Fruit Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 2, x: 2, y: 2)
                
                //Fruit Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                
                //Start Button
                StartButtonView()
                    .padding(3)
                    .offset(y: 15)
                
                
            }//eo VStack(spacing: 20)
        }//eo ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5))
            {
                isAnimating = true
            }
            isAnimating = false
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center  )
        .background(.linearGradient(Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//MARK: - Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
