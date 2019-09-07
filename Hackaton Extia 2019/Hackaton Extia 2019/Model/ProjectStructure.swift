//
//  ProjectStructure.swift
//  Hackaton Extia 2019
//
//  Created by Tatane on 07/09/2019.
//  Copyright © 2019 Jordan. All rights reserved.
//

import Foundation

enum ProjectType {
    case sport
    case formation
    case associatif
    case technique
}

struct Project {
    var type : ProjectType
    var name : String
    var logo : String
    var skills : [Skills]
    var projectTeam : [ProjectMember]
}

struct Skills {
    var name : String
    var id : Int
}

struct ProjectMember {
    var name : String
    var role : String
    var pic : String
}
