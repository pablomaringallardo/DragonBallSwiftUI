//
//  ErrorView.swift
//  DragonBallSwiftUI
//
//  Created by Pablo Marín Gallardo on 2/11/23.
//

import SwiftUI

struct ErrorView: View {
    var error: String
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "exclamationmark.triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.yellow)
            Text(error)
                .font(.title.bold())
        }
    }
}

#Preview {
    ErrorView(error: "Mensaje de error")
}
