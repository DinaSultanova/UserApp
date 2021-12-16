//
//  WelcomeViewController.swift
//  UserApp
//
//  Created by Дина on 15.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeUser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let loginVC = segue.destination as! LoginViewController
        loginVC.userName = welcomeUser.text
     }
    
    @IBAction func logOut(_ sender: Any) {
        dismiss(animated: true)
        
    }
    
   
}


