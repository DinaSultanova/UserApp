//
//  ViewController.swift
//  UserApp
//
//  Created by Дина on 15.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var passwordReminder: UIButton!
    @IBOutlet weak var nameReminder: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       _ = segue.destination as! WelcomeViewController
     }
 
    @IBAction func reminderName(_ sender: Any) {
        showAlert(title: "Name", message: "Your name is Dina")
        userName.text = "Dina"
    }
    
    @IBAction func reminderPassword(_ sender: Any) {
        showAlert(title: "Password", message: "Your password is 123")
        password.text = "123"
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let _ = segue.source as? WelcomeViewController
        userName.text = nil
        password.text = nil
    }
    
    @IBAction func logIn(_ sender: Any) {
        let userName = String(userName.text ?? "")
        let password = String(password.text ?? "")
        if userName == "Dina" && password == "123" {performSegue(withIdentifier: "showWelcomeVC", sender: Any?.self)} else {showAlert(title: "Mistake!", message: "Your name or password is wrong"); return }

    }
}

// MARK: - Private Methods

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
      let OkAction = UIAlertAction(title: "Ok", style: .default) { _ in
        }
        alert.addAction(OkAction)
        present(alert, animated: true)
    }
}
