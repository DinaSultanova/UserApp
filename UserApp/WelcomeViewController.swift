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
      //  welcomeUser = textField.text
        
      
    }
    
    @IBAction func logOut(_ sender: Any) {
        dismiss(animated: true)
    }
    
    //@IBAction func unwind(for segue: UIStoryboardSegue) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


