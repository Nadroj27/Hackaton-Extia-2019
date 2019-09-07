//
//  ProjectsInstance.swift
//  Hackaton Extia 2019
//
//  Created by Jordan on 07/09/2019.
//  Copyright © 2019 Jordan. All rights reserved.
//

import Foundation

class ProjectInstance {
    var items : [Project] = []
    
    static let shared = ProjectInstance()

       init(){
        self.items.append(Project(type: .formation, name: "Formation react-native", logo: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwj_zq38qb3kAhVSxYUKHZbuCi0QjRx6BAgBEAQ&url=https%3A%2F%2Ffr.wikipedia.org%2Fwiki%2FReact_Native&psig=AOvVaw1JhIIt_BZw8QPyrZN6vP94&ust=1567898167605335", skills: [Skills(name: "Javascript", id: 1), Skills(name: "Redux", id: 2)], projectTeam: [ProjectMember(name: "Alban Végleur", role: "Chef de projet", pic: "https://media.licdn.com/dms/image/C5603AQF2W_dnw9viFw/profile-displayphoto-shrink_200_200/0?e=1568246400&v=beta&t=Qm3xMNbBhox1td4kZPK71Aj3m40cIQLmq-GqozELtFU")]))
        self.items.append(Project(type: .associatif, name: "Maraudes avec le Secours Populaire", logo: "https://yt3.ggpht.com/a/AGF-l79aKYJG6lX_Mz3l5v5X3Afbgx8Udb0mf_s9sQ=s900-c-k-c0xffffffff-no-rj-mo", skills: [Skills(name: "Javascript", id: 1), Skills(name: "Redux", id: 2)], projectTeam: [ProjectMember(name: "Jean Stellitano", role: "Chef de projet", pic: "https://cdn.radiofrance.fr/s3/cruiser-production/2019/05/3b38074c-b878-4145-9698-7e8ea680fec7/870x489_j_stillettano.jpg")]))
        self.items.append(Project(type: .associatif, name: "Grosse séance xp bien sale sur dofus", logo: "http://static1.squarespace.com/static/574301c6f699bb27dcd47994/t/57430875f8508213077484c0/1567453013873/?format=1500w", skills: [Skills(name: "Dofus", id: 1), Skills(name: "Redux", id: 2)], projectTeam: [ProjectMember(name: "Umility", role: "Iop Feu", pic: "https://cdn.radiofrance.fr/s3/cruiser-production/2019/05/3b38074c-b878-4145-9698-7e8ea680fec7/870x489_j_stillettano.jpg")]))
        self.items.append(Project(type: .associatif, name: "MMA sur le parking", logo: "https://yt3.ggpht.com/a/AGF-l79aKYJG6lX_Mz3l5v5X3Afbgx8Udb0mf_s9sQ=s900-c-k-c0xffffffff-no-rj-mo", skills: [Skills(name: "Combat de rue", id: 1), Skills(name: "Redux", id: 2)], projectTeam: [ProjectMember(name: "Kaaris", role: "Raappeur rf", pic: "https://cdn.radiofrance.fr/s3/cruiser-production/2019/05/3b38074c-b878-4145-9698-7e8ea680fec7/870x489_j_stillettano.jpg")]))
        self.items.append(Project(type: .associatif, name: "Séance d'aquagym", logo: "https://yt3.ggpht.com/a/AGF-l79aKYJG6lX_Mz3l5v5X3Afbgx8Udb0mf_s9sQ=s900-c-k-c0xffffffff-no-rj-mo", skills: [Skills(name: "Savoir nager", id: 1), Skills(name: "Redux", id: 2)], projectTeam: [ProjectMember(name: "Jean Sébastien", role: "Stagiaire", pic: "https://cdn.radiofrance.fr/s3/cruiser-production/2019/05/3b38074c-b878-4145-9698-7e8ea680fec7/870x489_j_stillettano.jpg")]))
    }
    
    func load(){
       
    }
    
}
//Access the class
