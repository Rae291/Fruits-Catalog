//
//  ContentView.swift
//  Fru!ts Catalog
//
//  Created by APPLE on 21/09/22.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Property
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        
        //Fruit Rows
        NavigationView  {
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fru!ts")
            
            //Settings
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }// eo Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
