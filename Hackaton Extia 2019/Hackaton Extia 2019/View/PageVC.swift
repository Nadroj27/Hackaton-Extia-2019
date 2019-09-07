//
//  PageVC.swift
//  Hackaton Extia 2019
//
//  Created by Jordan on 06/09/2019.
//  Copyright © 2019 Jordan. All rights reserved.
//

import UIKit

class PageVC: UIViewController {
    
    var titleLabel: UILabel?
    var nextBtn: UIButton?
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var page: Page
    
    init(with page: Page) {
        self.page = page
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel = UILabel(frame: CGRect(x:100, y: screenHeight/2, width: screenWidth - 100, height: 100))
        titleLabel?.center = CGPoint(x: screenWidth/2, y: screenHeight/2)
        titleLabel?.adjustsFontForContentSizeCategory = true
        titleLabel?.textAlignment = NSTextAlignment.center
        titleLabel?.text = page.name
        nextBtn = UIButton(frame: CGRect(x: 100, y: screenHeight/2, width: 100, height: 400))
        nextBtn!.backgroundColor = .green
        nextBtn!.setTitle("Test Button", for: .normal)
        nextBtn!.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(nextBtn!)
        self.view.addSubview(titleLabel!)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
        if (page.index == 2) {
            if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "interestSegue") as? PointOfInterestVC
            {
                present(vc, animated: true, completion: nil)
            }
        } else {
            print(page.index)
        }
    }
}
