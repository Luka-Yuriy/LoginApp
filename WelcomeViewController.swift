//
//  LogInViewController.swift
//  LoginApp
//
//  Created by Yuri Luka on 08/06/2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var userName: String!

    @IBOutlet var welcomeMessage: UILabel!
    @IBOutlet var gradientView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradientBackground()
        
        welcomeMessage.text = "Welcome " + userName + "!"
    }
    
    private func gradientBackground() {
        let gradientBackground = CAGradientLayer()
        gradientBackground.frame = view.bounds
        gradientBackground.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemOrange.cgColor
        ]
        gradientView.layer.addSublayer(gradientBackground)
    }
}
