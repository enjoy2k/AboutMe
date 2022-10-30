//
//  WelcomeVC.swift
//  AboutMe
//
//  Created by Даниил Козлов on 30.10.2022.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcomeUser)!"
    }

}
