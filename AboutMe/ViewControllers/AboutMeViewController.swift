//
//  AboutMeViewController.swift
//  AboutMe
//
//  Created by Даниил Козлов on 01.11.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var userNameTitle: UINavigationItem!
    
    @IBOutlet var aboutMeLabel: UILabel!
    
    var aboutText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTitle.title = daniil.name
        aboutMeLabel.text = aboutText
    }
}
