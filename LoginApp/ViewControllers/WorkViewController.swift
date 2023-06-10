//
//  WorkViewController.swift
//  LoginApp
//
//  Created by Yuri Luka on 10/06/2023.
//

import UIKit

class WorkViewController: UIViewController {
    
    private let user = User.getPerson()
    
    @IBOutlet var jobCompanyLabel: UIImageView!
    @IBOutlet var userWorkLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userWorkLabel.text = user.person.job
        
        jobCompanyLabel.layer.cornerRadius = 12
    }
 
}
