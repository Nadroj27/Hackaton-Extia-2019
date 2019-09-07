//
//  ActivitiesVC.swift
//  Hackaton Extia 2019
//
//  Created by Jordan on 07/09/2019.
//  Copyright © 2019 Jordan. All rights reserved.
//

import UIKit
import VerticalCardSwiper

class ActivitiesVC: UIViewController, VerticalCardSwiperDatasource, VerticalCardSwiperDelegate {
    
    private var cardSwiper: VerticalCardSwiper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardSwiper = VerticalCardSwiper(frame: self.view.bounds)
        view.addSubview(cardSwiper)
        cardSwiper.delegate = self
        cardSwiper.datasource = self
        
        // register cardcell for storyboard use
        cardSwiper.register(nib: UINib(nibName: "ExampleCardCell", bundle: nil), forCellWithReuseIdentifier: "ExampleCardCell")
    }
    
    func cardForItemAt(verticalCardSwiperView: VerticalCardSwiperView, cardForItemAt index: Int) -> CardCell {
        
        if let cardCell = verticalCardSwiperView.dequeueReusableCell(withReuseIdentifier: "ExampleCardCell", for: index) as? ExampleCardCell {
            cardCell.nameLbl.text = ProjectInstance.shared.items[index].name
            cardCell.teamNbLbl.text = "N° de participant " +  String(ProjectInstance.shared.items[index].projectTeam.count)
            cardCell.downloadImage(from: ProjectInstance.shared.items[index].logo)
            switch (ProjectInstance.shared.items[index].type) {
                case (.formation) :
                    cardCell.typeLbl.text = "Formation"
                    cardCell.backgroundColor = UIColor(red: 26/255, green: 188/255, blue: 156/255, alpha: 1.0)
                case (.associatif) :
                    cardCell.typeLbl.text = "Projet associatif"
                    cardCell.backgroundColor = UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)
                case (.sport) :
                    cardCell.typeLbl.text = "Activitée sportive"
                    cardCell.backgroundColor = UIColor(red: 231/255, green: 76/255, blue: 60/255, alpha: 1.0)
                case (.technique) :
                    cardCell.typeLbl.text = "Projet technique"
                    cardCell.backgroundColor = UIColor(red: 243/255, green: 156/255, blue: 18/255, alpha: 1.0)
                default:
                    break
            }
           
            return cardCell
        }
        return CardCell()
    }
    
    internal func didSwipeCardAway(card: CardCell, index: Int, swipeDirection: SwipeDirection) {
        
        
        if (swipeDirection == .Left) {
            ProjectInstance.shared.items.remove(at: index)
            
        } else {
            // ajoute a la raie
        }
        print(swipeDirection)
    }
    
    func numberOfCards(verticalCardSwiperView: VerticalCardSwiperView) -> Int {
        return ProjectInstance.shared.items.count
    }
}
