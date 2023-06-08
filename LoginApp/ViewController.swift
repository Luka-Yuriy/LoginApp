//
//  ViewController.swift
//  LoginApp
//
//  Created by Yuri Luka on 05/06/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var userName = "User"
    private var userPassword = "Password"
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logInButtonPressed(_ sender: Any) {
        if userNameTF.text != userName || userPasswordTF.text != userPassword {
            showAlert(whith: "Invalid login or password",
                      and: "Please, enter correct login and password")
        }
    }
    
    @IBAction func fogotUserNameButtonPressed(_ sender: Any) {
        showAlert(whith: "Oops!", and: "Your name is User 😋")
    }
    
    @IBAction func fogotPasswordButtonPressed(_ sender: Any) {
        showAlert(whith: "Oops!", and: "Your password is Password 😋")
    }
}


// MARK: - UIAlertController
extension ViewController {
    private func showAlert(whith title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


