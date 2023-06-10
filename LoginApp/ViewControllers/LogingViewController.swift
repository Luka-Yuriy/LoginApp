//
//  ViewController.swift
//  LoginApp
//
//  Created by Yuri Luka on 05/06/2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    private let user = User.getPerson()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == user.login, userPasswordTF.text == user.password else {
            showAlert(
                title:"Invalid login or password",
                message: "Please, enter correct login and password",
                textField: userPasswordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func fogotRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your name is \(user.login) 😋")
            : showAlert(title: "Oops!", message: "Your password is \(user.password) 😋")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
