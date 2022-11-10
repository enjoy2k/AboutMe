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
    var topLabel = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTitle.title = topLabel
        aboutMeLabel.text = aboutText
    }
}
