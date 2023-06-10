//
//  LogInViewController.swift
//  LoginApp
//
//  Created by Yuri Luka on 08/06/2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    private let user = User.getPerson()
    
    @IBOutlet var welcomeLable: UILabel!
    
    private let privaruColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: privaruColor, bottomColor: secondaryColor)
        welcomeLable.text = "Welcome, \(user.person.surName) \(user.person.name)!"
    }
}

//MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
