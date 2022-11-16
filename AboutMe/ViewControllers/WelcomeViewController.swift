//
//  WelcomeVC.swift
//  AboutMe
//
//  Created by Даниил Козлов on 30.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    var user: User!
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(user.person.fullName)"
    }
}

