//
//  TransferViewController.swift
//  AboutMe
//
//  Created by Даниил Козлов on 03.11.2022.
//

import UIKit

class TransferViewController: UIViewController {
    
//    let daniil = Person(name: "Даниил", surname: "Козлов", about: "Привет!")
    let daniil = Person.getUserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutMeVC = segue.destination as? AboutMeViewController else { return }
        aboutMeVC.aboutText = daniil.about
        aboutMeVC.topLabel = daniil.name
    }
}
