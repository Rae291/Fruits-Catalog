//
//  Fru_ts_CatalogApp.swift
//  Fru!ts Catalog
//
//  Created by APPLE on 21/09/22.
//

import SwiftUI

@main
struct Fru_ts_CatalogApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
