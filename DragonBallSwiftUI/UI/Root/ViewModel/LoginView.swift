//
//  LoginView.swift
//  DragonBallSwiftUI
//
//  Created by Pablo Marín Gallardo on 31/10/23.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: RootViewModel
    @State var textFieldEmail: String = ""
    @State var textFieldPassword: String = ""
    var body: some View {
        ZStack {
            Image(.fondoLogin)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            Image(systemName: "photo.fill")
                .resizable()
                .frame(width: 300, height: 150)
                .padding(.bottom, 380)
            
            VStack(spacing: 16) {
                TextField("Email", text: $textFieldEmail)
                    .frame(width: 300, height: 35)
                    .padding(.horizontal, 8)
                    .background()
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .textInputAutocapitalization(.never)
                
                TextField("Password", text: $textFieldPassword)
                    .frame(width: 300, height: 35)
                    .padding(.horizontal, 8)
                    .background()
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .textInputAutocapitalization(.never)
                
                
                    Button {
                        viewModel.login(
                            email: textFieldEmail,
                            password: textFieldPassword
                        )
                        print(viewModel.token)
                    } label: {
                        Text("Login")
                    }
                    .frame(width: 100, height: 35)
                    .foregroundColor(.white)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .padding(.top, 28)
                }
                .padding(.top, 180)
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(RootViewModel())
}
