//
//  SourceLinkView.swift
//  Fru!ts Catalog
//
//  Created by APPLE on 01/10/22.
//

import SwiftUI

struct SourceLinkView: View {
    
    //MARK: - Property
    var fruit: Fruit
    
    //MARK: - Body
    var body: some View {
        GroupBox() {
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia \(Image(systemName: "arrow.up.right.square"))", destination: URL(string: "https://en.wikipedia.org/wiki/\(fruit.title)")!)
                
            }
            .font(.footnote )
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
