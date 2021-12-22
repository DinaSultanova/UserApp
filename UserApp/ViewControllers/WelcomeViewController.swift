//
//  WelcomeViewController.swift
//  UserApp
//
//  Created by Дина on 15.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeUser: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUser.text = "Welcome, \(user.person.fullName)!"
    } 
}


