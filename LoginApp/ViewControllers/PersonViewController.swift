//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Yuri Luka on 10/06/2023.
//

import UIKit

class PersonViewController: UIViewController {
    
    private let user = User.getPerson()
    
    @IBOutlet var userBiographyLabel: UILabel!
    @IBOutlet var userHobbiesLabel: UILabel!
    
    @IBOutlet var personImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userBiographyLabel.text = user.person.biography
        userHobbiesLabel.text = user.person.hobbies
        
        personImage.layer.cornerRadius = personImage.frame.width / 2
        
        navigationItem.title = "\(user.person.name) \(user.person.surName)"
    
    }
}
