//
//  CardCell.swift
//  Hackaton Extia 2019
//
//  Created by Jordan on 07/09/2019.
//  Copyright © 2019 Jordan. All rights reserved.
//

import Foundation
import UIKit
import VerticalCardSwiper
import Alamofire

class ExampleCardCell: CardCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var teamNbLbl: UILabel!
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var logoImg: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override func layoutSubviews() {
        
        self.layer.cornerRadius = 12
        super.layoutSubviews()
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    func downloadImage(from url: String) {
        let remoteImageURL = URL(string: url)!
        
        
         Alamofire.request(remoteImageURL).responseData { (response) in
                 if response.error == nil {
                         if let data = response.data {
                                 self.logoImg.image = UIImage(data: data)
                             }
                     }
             }
        
    }
}
