//
//  LoadingView.swift
//  DragonBallSwiftUI
//
//  Created by Pablo Marín Gallardo on 2/11/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Image("fondoLogin")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            Color.black
                .ignoresSafeArea()
                .opacity(0.6)
            
            ProgressView()
                .scaleEffect(1.80)
                .tint(.orange)
        }
    }
}

#Preview {
    LoadingView()
}
