//
//  HeroModel.swift
//  DragonBallSwiftUI
//
//  Created by Pablo Marín Gallardo on 3/11/23.
//

import Foundation

typealias heroes = [Hero]

struct Hero: Identifiable {
    let id = UUID()
    let name: String
    let photo: String
    let heroDescription: String
    var isFavorite: Bool
}

var heros = [
    Hero(
        name: "Goku",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300", heroDescription: "El Dios de la Destrucción fue el villano principal de Dragon Ball Super. Sin embargo, ya había hecho acto de presencia en la película Dragon Ball Z: La Batalla de los Dioses como antagonista. El diseño del personaje es uno de los más singulares de Toriyama y se inspiró en su gato para crearlo, así como en la mitología egipcia. A pesar del título que ostenta, Beerus es más dócil de lo que parece en un primer momento. Su presentación dejó huella porque amenazó con destruir el planeta Tierra por mera diversión.", isFavorite: false
    ),
    Hero(
        name: "Vegeta",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/vegetita.jpg?width=300", heroDescription: "El Dios de la Destrucción fue el villano principal de Dragon Ball Super. Sin embargo, ya había hecho acto de presencia en la película Dragon Ball Z: La Batalla de los Dioses como antagonista. El diseño del personaje es uno de los más singulares de Toriyama y se inspiró en su gato para crearlo, así como en la mitología egipcia. A pesar del título que ostenta, Beerus es más dócil de lo que parece en un primer momento. Su presentación dejó huella porque amenazó con destruir el planeta Tierra por mera diversión.", isFavorite: false
    ),
    Hero(
        name: "Bills",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/06/dragon-ball-super-beerus.jpg?width=300", heroDescription: "El Dios de la Destrucción fue el villano principal de Dragon Ball Super. Sin embargo, ya había hecho acto de presencia en la película Dragon Ball Z: La Batalla de los Dioses como antagonista. El diseño del personaje es uno de los más singulares de Toriyama y se inspiró en su gato para crearlo, así como en la mitología egipcia. A pesar del título que ostenta, Beerus es más dócil de lo que parece en un primer momento. Su presentación dejó huella porque amenazó con destruir el planeta Tierra por mera diversión.", isFavorite: false
    )
]
