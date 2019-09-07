//
//  Page.swift
//  Hackaton Extia 2019
//
//  Created by Jordan on 06/09/2019.
//  Copyright © 2019 Jordan. All rights reserved.
//

import Foundation

enum Page: CaseIterable {
    case pageZero
    case pageOne
    case pageTwo
    
    var name: String {
        switch self {
        case .pageZero:
            return "Interlude est l'ami des consultants ! Rejoigner vos collègues de travail autour d'une activité commune, sport, formation, projet personnel"
        case .pageOne:
            return "Organisez vos journées durant vos inters-projets et organisez vous-même votre emploi du temps"
        case .pageTwo:
            return "Optimiser votre temps d'inter-projet en choisissant ce qu'il vous plaît, vous êtes pret ?"
        }
    }
    
    var index: Int {
        switch self {
        case .pageZero:
            return 0
        case .pageOne:
            return 1
        case .pageTwo:
            return 2
        }
    }
}
