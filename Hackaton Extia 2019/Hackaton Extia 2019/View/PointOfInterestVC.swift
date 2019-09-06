//
//  PointOfInterestVC.swift
//  Hackaton Extia 2019
//
//  Created by Ethan on 06/09/2019.
//  Copyright © 2019 Jordan. All rights reserved.
//

import UIKit

struct interestCell {
    var name: String
    var enable: Bool
}

class PointOfInterestVC: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var array = [interestCell(name: "Formation", enable: false),
                 interestCell(name: "Activitées sportives", enable: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate  = self
        tableView.separatorStyle = .none
        // Do any additional setup after loading the view.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = self.array[indexPath.row].name
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = self.tableView.cellForRow(at: indexPath)
        if (self.array[indexPath.row].enable) {
            self.array[indexPath.row].enable = false
            cell?.accessoryType = .none
        } else {
            self.array[indexPath.row].enable = true
            cell?.accessoryType = .checkmark
        }
    }
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
        
    
}
