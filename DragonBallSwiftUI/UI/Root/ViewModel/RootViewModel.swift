//
//  RootViewModel.swift
//  DragonBallSwiftUI
//
//  Created by Pablo Marín Gallardo on 31/10/23.
//

import Foundation

enum Status {
    case none, loaded, loading, error(error: String)
}

final class RootViewModel: ObservableObject {
    @Published var status = Status.none
    
    var token: String = ""
    
    func login(email: String, password: String) {
        self.status = .loading
        print("Email: (email), Password: (password)")
        
        
        self.token = "asdgwrfuywoihrjqowueyfhoqjwehf9wq86r23uhrqejrhfq"
        self.status = .loaded
    }
}
