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

       init() {
        self.items.append(Project(type: .formation, name: "Formation react-native", logo: "https://i.pinimg.com/originals/68/f9/d8/68f9d883e71d52602c99476fca4043a5.png", skills: [Skills(name: "Javascript", id: 1), Skills(name: "Redux", id: 2)], projectTeam: [ProjectMember(name: "Alban Végleur", role: "Chef de projet", pic: "https://media.licdn.com/dms/image/C5603AQF2W_dnw9viFw/profile-displayphoto-shrink_200_200/0?e=1568246400&v=beta&t=Qm3xMNbBhox1td4kZPK71Aj3m40cIQLmq-GqozELtFU")]))
        self.items.append(Project(type: .associatif, name: "Maraudes avec le Secours Populaire", logo: "https://yt3.ggpht.com/a/AGF-l79aKYJG6lX_Mz3l5v5X3Afbgx8Udb0mf_s9sQ=s900-c-k-c0xffffffff-no-rj-mo", skills: [Skills(name: "Javascript", id: 1), Skills(name: "Redux", id: 2)], projectTeam: [ProjectMember(name: "Jean Stellitano", role: "Chef de projet", pic: "https://cdn.radiofrance.fr/s3/cruiser-production/2019/05/3b38074c-b878-4145-9698-7e8ea680fec7/870x489_j_stillettano.jpg")]))
        self.items.append(Project(type: .technique, name: "Projet robotique", logo: "https://einsteinfamily.fr/wp-content/uploads/2018/07/robot.png", skills: [Skills(name: "Javascript", id: 1), Skills(name: "Redux", id: 2)], projectTeam: [ProjectMember(name: "Ethan Kerdelhue", role: "Lead developer", pic: "https://cdn.radiofrance.fr/s3/cruiser-production/2019/05/3b38074c-b878-4145-9698-7e8ea680fec7/870x489_j_stillettano.jpg")]))
         self.items.append(Project(type: .sport, name: "Match de foot", logo: "http://pluspng.com/img-png/zidane-png-zinedine-zidane-429.png", skills: [Skills(name: "Javascript", id: 1), Skills(name: "Redux", id: 2)], projectTeam: [ProjectMember(name: "Zinedine Zidane", role: "Coach sportif", pic: "https://cdn.radiofrance.fr/s3/cruiser-production/2019/05/3b38074c-b878-4145-9698-7e8ea680fec7/870x489_j_stillettano.jpg")]))
        }
    
    func load(){
       
    }
}
//Access the class
