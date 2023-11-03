//
//  HomeView.swift
//  DragonBallSwiftUI
//
//  Created by Pablo Marín Gallardo on 2/11/23.
//

import SwiftUI



struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    @State var searchText = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.herosList) { hero in
                    NavigationLink {
                        VStack {
                            DetailView(hero: hero)
                        }
                    } label: {
                        HStack {
                            AsyncImage(
                                url: URL(string: hero.photo)) { Image in
                                    Image
                                        .resizable()
                                        .frame(width: 150, height: 100)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .shadow(radius: 1, x: 3, y: 3)
                                    
                                } placeholder: {
                                    Image(systemName: "photo")
                                }
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text(hero.name)
                                .font(.title2)
                                .bold()
                            Text(hero.heroDescription)
                                .font(.system(size: 14))
                                .lineLimit(4)
                            
                        }
                    }
                }
            }
            .navigationTitle("Heroes")
            .listStyle(.plain)
            .searchable(text: $searchText)
            .onChange(of: searchText) { _, newValue in
                if searchText.isEmpty {
                    
                } else {
                    if viewModel.herosList.contains(where: { hero in
                        hero.name == searchText
                    }) 
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
