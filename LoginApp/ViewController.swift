//
//  ViewController.swift
//  LoginApp
//
//  Created by Yuri Luka on 05/06/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    private var userName = "User"
    private var userPassword = "Password"
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logInVC = segue.destination as? WelcomeViewController else { return }
        logInVC.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    
    @IBAction func logInButtonPressed(_ sender: Any) {
        if userNameTF.text != userName || userPasswordTF.text != userPassword {
            showAlert(
                whith: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func fogotUserNameButtonPressed(_ sender: Any) {
        showAlert(whith: "Oops!", and: "Your name is User 😋")
    }
    
    @IBAction func fogotPasswordButtonPressed(_ sender: Any) {
        showAlert(whith: "Oops!", and: "Your password is Password 😋")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
}


// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(whith title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { showAlert in
            self.userPasswordTF.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


