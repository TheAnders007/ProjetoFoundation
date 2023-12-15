//
//  ProjetoLittleBotanistApp.swift/Users/user/Downloads/botanizou/InformacoesViewController.swift/Users/user/Desktop/Equipe Sunrise.webloc
//  ProjetoLittleBotanist/Users/user/Downloads/botanizou/InformacoesViewController.swift
//
//  Created by User on 17/10/23.
//

import SwiftUI

@main
struct ProjetoLittleBotanistApp: App {
    
    init() {
        for family in UIFont.familyNames {
            print("\(family)/")
            for font in UIFont.fontNames(forFamilyName: family) {
                print(" \(font)/")
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
