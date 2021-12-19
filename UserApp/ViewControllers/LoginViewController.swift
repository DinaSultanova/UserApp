//
//  LoginViewController.swift
//  UserApp
//
//  Created by Дина on 15.12.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    let person = User.getPerson()
    
    //MARK: IB Outlets
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    // MARK: - Private properties
    private let user = "Dina"
    private let password = "123"
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.user = user
    }
    
    //MARK: IBActions
    
    @IBAction func logIn() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
                )
        }
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user)")
        : showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}


// MARK: - Private Methods

extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
      let OkAction = UIAlertAction(title: "Ok", style: .default) { _ in
          textField?.text = ""
        }
        alert.addAction(OkAction)
        present(alert, animated: true)
    }
}

