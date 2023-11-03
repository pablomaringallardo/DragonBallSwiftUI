//
//  DetailView.swift
//  DragonBallSwiftUI
//
//  Created by Pablo Marín Gallardo on 2/11/23.
//

import SwiftUI

struct DetailView: View {
    @State var hero: Hero
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(
                    url: URL(string: hero.photo)) { image in
                        image
                            .resizable()
                            .frame(width: 340, height: 240)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                            .shadow(radius: 4, x: 5, y: 10)
                            .overlay(alignment: .bottomTrailing) {
                                Button(action: {
                                    hero.isFavorite.toggle()
                                }, label: {
                                    Image(systemName: "heart.fill")
                                        .foregroundStyle(hero.isFavorite ? .red : .white)
                                        .padding()
                                        .font(.title2)
                                })
                            }
                    } placeholder: {
                        Image(systemName: "photo")
                    }
                HStack {
                    Text(hero.name)
                        .font(.system(size: 30))
                        .bold()
                        .padding(.top)
                }
                
                Text(hero.heroDescription)
                    .padding(.top, 1)
                
                    
            }
            .padding()
        }
        .navigationTitle("Detalle de \(hero.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        DetailView(hero: Hero(name: "Goku", photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300", heroDescription: "El Dios de la Destrucción fue el villano principal de Dragon Ball Super. Sin embargo, ya había hecho acto de presencia en la película Dragon Ball Z: La Batalla de los Dioses como antagonista. El diseño del personaje es uno de los más singulares de Toriyama y se inspiró en su gato para crearlo, así como en la mitología egipcia. A pesar del título que ostenta, Beerus es más dócil de lo que parece en un primer momento. Su presentación dejó huella porque amenazó con destruir el planeta Tierra por mera diversión.", isFavorite: false))
    }
}
