//
//  HomeViewModel.swift
//  DragonBallSwiftUI
//
//  Created by Pablo Marín Gallardo on 3/11/23.
//

import Foundation

final class HomeViewModel: ObservableObject {
    
    //array de heroes
    @Published var herosList: heroes = heros
    
    func searchHero() {
        
    }
}
