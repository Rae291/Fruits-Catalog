//
//  FruitsModel.swift
//  Fru!ts Catalog
//
//  Created by APPLE on 22/09/22.
//

import SwiftUI

struct Fruit: Identifiable {
    var id: UUID
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
