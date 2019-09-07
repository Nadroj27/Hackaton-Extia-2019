//
//  ViewController.swift
//  Hackaton Extia 2019
//
//  Created by Jordan on 06/09/2019.
//  Copyright © 2019 Jordan. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.layer.cornerRadius = 15.0
        usernameTextField.layer.borderWidth = 1.0
        
        passwordTextField.layer.cornerRadius = 15.0
        passwordTextField.layer.borderWidth = 1.0
        //usernameTextField.layer.borderColor = UIColor.black.cgColor
        
        ProjectInstance.shared.load()
        print(ProjectInstance.shared.items.count)

    }
    
    @IBAction func infoBtnPressed(_ sender: Any) {
        showSimpleAlert()
    }
    
    func showSimpleAlert() {
        let alert = UIAlertController(title: "Besoin d'aide ?", message: "Votre ID ainsi que votre mot de passe d'employé vous sont fournis par l'entreprise.",         preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Merci", style: UIAlertAction.Style.default, handler: { _ in
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
}

