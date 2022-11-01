//
//  WelcomeVC.swift
//  AboutMe
//
//  Created by Даниил Козлов on 30.10.2022.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName = ""
    var userSurname = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(userName) \(userSurname)!"
    }
}

/*
 На экран About я передам в тайтл person.name, а в лэйбл person.about
 */
