//
//  RootView.swift
//  DragonBallSwiftUI
//
//  Created by Pablo Marín Gallardo on 31/10/23.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var rootViewModel: RootViewModel
    var body: some View {
        switch rootViewModel.status {
        case .none:
            LoginView()
        case .loading:
            LoadingView()
        case .loaded:
            HomeView()
        case .error(error: let error):
            ErrorView(error: error)
        }
    }
}

#Preview {
    RootView().environmentObject(RootViewModel())
}
