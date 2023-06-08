//
//  LogInViewController.swift
//  LoginApp
//
//  Created by Yuri Luka on 08/06/2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeMessage: UILabel!
    
    @IBOutlet var gradientView: UIView!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientBackground = CAGradientLayer()
        gradientBackground.frame = view.bounds
        gradientBackground.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemOrange.cgColor
        ]
        gradientView.layer.addSublayer(gradientBackground)
        
        welcomeMessage.text = "Welcome " + userName + "!"
    }

    @IBAction func logOutButtonPressed() {
    }
    
}
