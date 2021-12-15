//
//  WelcomeViewController.swift
//  UserApp
//
//  Created by Дина on 15.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeUser: UILabel!
    
    var userName: String!
    var password: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         welcomeUser.text = userName
    }
    
    @IBAction func logOut(_ sender: Any) {
        dismiss(animated: true)
        
    }
    
  
}


